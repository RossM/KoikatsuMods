UNITY_DECLARE_TEX2D(_GrabTexture);
float GetAuraDistance(float2 uv, float radius)
{
#ifdef AURA_HIRES
	const int maxRadius = 32;
	const int dSize = 2 * maxRadius + 1;
	const float d[dSize] = {
		0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8,
		-8, 9, -9, 10, -10, 11, -11, 12, -12, 13, -13, 14, -14, 15, -15, 16,
		-16, 17, -17, 18, -18, 19, -19, 20, -20, 21, -21, 22, -22, 23, -23, 24,
		-24, 25, -25, 26, -26, 27, -27, 28, -28, 29, -29, 30, -30, 31, -31, 32,
		-32
	};
#else
	const int maxRadius = 12;
	const int dSize = 2 * maxRadius + 1;
	const float d[dSize] = {
		0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8,
		-8, 9, -9, 10, -10, 11, -11, 12, -12
	};
#endif

	radius *= length(_ScreenParams.xy);

	float step = max(radius / (maxRadius + 1), 1);
	float maxr = radius / step;
	float2 pixelStep = step / _ScreenParams.xy;

	float result_sq = maxr * maxr;
	// Iterate over rows in an order intended to maximize the chance that we find a nearby pixel early and can skip
	// texture accesses.
#ifndef SHADER_API_GLES
	[loop]
#endif
	for (int j = 0; j < dSize; j++)
	{
		float y = d[j];
		float y_sq = y * y;
		if (y_sq >= result_sq)
			break;
		float2 uv2 = uv + float2(-maxRadius, y) * pixelStep.xy;
		// Iterate over columns in order to be easy to parallelize.
#ifndef SHADER_API_GLES
		[unroll]
#endif
		for (float x = -maxRadius; x <= maxRadius; x++)
		{
			float r_sq = x * x + y_sq;
			if (result_sq > r_sq)
			{
#if defined(SHADER_API_D3D11) || defined(SHADER_API_GLCORE)
				if (_GrabTexture.SampleLevel(sampler_GrabTexture, uv2, 0).a == 0)
					result_sq = r_sq;
#else
				if (tex2Dlod(_GrabTexture, float4(uv2, 0, 0)).a == 0)
					result_sq = r_sq;
#endif
			}
			uv2.x += pixelStep.x;
		}
	}

	return sqrt(result_sq) / maxr;
}