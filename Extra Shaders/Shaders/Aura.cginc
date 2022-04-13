#include "Utilities.cginc"

UNITY_DECLARE_TEX2D(_GrabTexture);

#define MAXRADIUS 128

float EncodeDistance(float r)
{
	return saturate(r / MAXRADIUS);
}
float DecodeDistance(float a)
{
	return a * MAXRADIUS;
}

float HPass(float2 uv, float radius)
{
	radius *= length(_ScreenParams.xy);
	float step = max(radius / (MAXRADIUS + 1), 1);
	float ustep = step / _ScreenParams.x;
	float limit = min(MAXRADIUS, floor(radius / step));
	float result = MAXRADIUS;
	UNROLL for (float x = -limit; x <= limit; x++)
	{
		if (SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x + x * ustep, uv.y), 0).a == 0)
			result = min(result, abs(x));
	}
	return EncodeDistance(result);
}

float VPass(float2 uv, float radius)
{
	radius *= length(_ScreenParams.xy);
	float step = max(radius / (MAXRADIUS + 1), 1);
	float vstep = step / _ScreenParams.y;
	float limit = min(MAXRADIUS, floor(radius / step));
	float result_sq = MAXRADIUS * MAXRADIUS;
	UNROLL for (float y = -limit; y <= limit; y++)
	{
		float rx = DecodeDistance(SAMPLE_TEX2D_LOD(_GrabTexture, float2(uv.x, uv.y + y * vstep), 0).a);
		result_sq = min(result_sq, rx * rx + y * y);
	}
	return saturate(sqrt(result_sq) * step / radius);
}