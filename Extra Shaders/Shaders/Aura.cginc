float GetAuraDistance(float2 uv, float radius, sampler2D GrabTexture)
{
#ifdef AURA_HIRES
	const int maxRadius = 32;
#else
	const int maxRadius = 12;
#endif

	const int dSize = 2 * maxRadius + 1;
	int d[dSize];
	d[0] = 0;
	for (int n = 1; n <= maxRadius; n++)
	{
		d[2 * n - 1] = n;
		d[2 * n] = -n;
	}

	radius *= length(_ScreenParams.xy);

	float step = max(radius / (maxRadius + 1), 1);

	float result = radius;
	// Iterate over rows in an order intended to maximize the chance that we find a nearby pixel early and can skip
	// texture accesses.
	[loop] for (int j = 0; j < dSize; j++)
	{
		float y = d[j];
		if (abs(y) >= result)
			break;
		float4 uv2 = float4(uv + float2(-maxRadius, y) * step / _ScreenParams.xy, 0, 0);
		// Iterate over columns in order to be easy to parallelize.
		[unroll] for (float x = -maxRadius; x <= maxRadius; x++)
		{
			float r = sqrt(x * x + y * y) * step;
			if (result > r)
			{
				if (tex2Dlod(GrabTexture, uv2).a == 0)
					result = r;
			}
			uv2.x += step / _ScreenParams.x;
		}
	}

	return result / radius;
}