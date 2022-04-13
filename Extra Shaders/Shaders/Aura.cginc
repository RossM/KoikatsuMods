#include "Utilities.cginc"

UNITY_DECLARE_TEX2D(_GrabTexture);

#ifdef SHADER_API_D3D9
#define MAXRADIUS 63
#else
#define MAXRADIUS 127
#endif

float EncodeDistance(float r, float extra)
{
	// This is slightly faster than
	//   (abs(r) + extra) / (MAXRADIUS + 1)
	// because it can be done with one multiply-add when r is constant.
	return saturate(abs(r) / (MAXRADIUS + 1) + extra / (MAXRADIUS + 1));
}
float DecodeDistance(float a, out float extra)
{
	float val = a * (MAXRADIUS + 1);
	extra = frac(val);
	return val - extra;
}

float HPass(float2 uv, float radius)
{
	radius *= length(_ScreenParams.xy);
	float step = max(radius / (MAXRADIUS + 1), 1);
	float ustep = step / _ScreenParams.x;
	float limit = floor(radius / step);
	float result = MAXRADIUS + 1;
	if (limit >= MAXRADIUS)
	{
		UNROLL for (float x = -MAXRADIUS; x <= MAXRADIUS; x++)
		{
			float a = SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x + x * ustep, uv.y), 0).a;
			if (a < 1)
				result = min(result, EncodeDistance(x, a));
		}
	}
	else
	{
		for (float x = -limit; x <= limit; x++)
		{
			float a = SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x + x * ustep, uv.y), 0).a;
			if (a < 1)
				result = min(result, EncodeDistance(x, a));
		}
	}
	return result;
}

float VPass(float2 uv, float radius)
{
	radius *= length(_ScreenParams.xy);
	float step = max(radius / (MAXRADIUS + 1), 1);
	float vstep = step / _ScreenParams.y;
	float limit = floor(radius / step);
	float result_sq = (MAXRADIUS + 1) * (MAXRADIUS + 1);
	if (limit >= MAXRADIUS)
	{
		UNROLL for (float y = -MAXRADIUS; y <= MAXRADIUS; y++)
		{
			float extra;
			float x = DecodeDistance(SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x, uv.y + y * vstep), 0).a, extra);
			// Approximation of
			//   result_sq = (sqrt(x^2 + y^2) + extra)^2 = x^2 + y^2 + 2 * extra * sqrt(x^2 + y^2) + extra^2,
			// dropping the extra^2 term and using
			//   sqrt(x^2 + y^2) ~ (abs(x) + abs(y))/2
			// Since (x + extra) is already computed inside DecodeDistance, rearranging
			//   x * x + extra * (x + abs(y))
			// to
			//   (x + extra) * x + extra * abs(y)
			// saves one addition.
			result_sq = min(result_sq, (x + extra) * x + y * y + extra * abs(y));
		}
	}
	else
	{
		for (float y = -limit; y <= limit; y++)
		{
			float extra;
			float x = DecodeDistance(SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x, uv.y + y * vstep), 0).a, extra);
			result_sq = min(result_sq, (x + extra) * x + y * y + extra * abs(y));
		}
	}
	return saturate(sqrt(result_sq) * step / radius);
}