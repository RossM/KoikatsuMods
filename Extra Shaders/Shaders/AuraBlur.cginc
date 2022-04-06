#ifdef AURA_HIRES
const int maxRadius = 31;
#else
const int maxRadius = 10;
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
	int y = d[j];
	// Iterate over columns in order to be easy to parallelize.
	[unroll] for (int x = -maxRadius; x <= maxRadius; x++)
	{
		float r = sqrt(x * x + y * y) * step;
		float2 uv2 = uv + float2(x, y) * step / _ScreenParams.xy;
		if (result > r)
		{
			float sceneZ = max(0, LinearEyeDepth(UNITY_SAMPLE_DEPTH(tex2D(DepthTexture, uv2))) - _ProjectionParams.g);
			if (sceneZ <= depth && tex2D(GrabTexture, uv2).a == 0)
				result = r;
		}
	}
}

return result / radius;