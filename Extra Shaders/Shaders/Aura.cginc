UNITY_DECLARE_TEX2D(_GrabTexture);

#pragma exclude_renderers d3d9

#if defined(SHADER_API_D3D11) || defined(SHADER_API_GLCORE)
#define SAMPLE_TEX2D_LOC(tex, uv, loc) tex.SampleLevel(sampler##tex, uv, loc)
#else
#define SAMPLE_TEX2D_LOC(tex, uv, loc) tex2Dlod(tex, float4(uv, 0, loc))
#endif

#define MAXRADIUS 127

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
	float2 pixelstep = float2(1, 0) * step / _ScreenParams.x;
	float result = MAXRADIUS;
	for (float x = -MAXRADIUS; x <= MAXRADIUS; x++)
	{
		if (SAMPLE_TEX2D_LOC(_GrabTexture, uv + x * pixelstep, 0).a == 0)
			result = min(result, abs(x));
	}
	return EncodeDistance(result);
}

float VPass(float2 uv, float radius)
{
	radius *= length(_ScreenParams.xy);
	float step = max(radius / (MAXRADIUS + 1), 1);
	float2 pixelstep = float2(0, 1) * step / _ScreenParams.y;
	float result_sq = MAXRADIUS * MAXRADIUS;
	for (float y = -MAXRADIUS; y <= MAXRADIUS; y++)
	{
		float rx = DecodeDistance(SAMPLE_TEX2D_LOC(_GrabTexture, uv + y * pixelstep, 0).a);
		result_sq = min(result_sq, rx * rx + y * y);
	}
	return sqrt(result_sq) * step / radius;
}