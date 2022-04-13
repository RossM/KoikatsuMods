#include "Utilities.cginc"

UNITY_DECLARE_TEX2D(_GrabTexture);

#ifdef SHADER_API_D3D9
#define MAXRADIUS 63
#else
#define MAXRADIUS 127
#endif

float EncodeDistance(float r)
{
	return saturate(r / (MAXRADIUS + 1));
}
float DecodeDistance(float a)
{
	return a * (MAXRADIUS + 1);
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
			if (SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x + x * ustep, uv.y), 0).a == 0)
				result = min(result, abs(x));
		}
	}
	else
	{
		for (float x = -limit; x <= limit; x++)
		{
			if (SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x + x * ustep, uv.y), 0).a == 0)
				result = min(result, abs(x));
		}
	}
	return EncodeDistance(result);
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
			float rx = DecodeDistance(SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x, uv.y + y * vstep), 0).a);
			result_sq = min(result_sq, rx * rx + y * y);
		}
	}
	else
	{
		for (float y = -limit; y <= limit; y++)
		{
			float rx = DecodeDistance(SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x, uv.y + y * vstep), 0).a);
			result_sq = min(result_sq, rx * rx + y * y);
		}
	}
	return saturate(sqrt(result_sq) * step / radius);
}