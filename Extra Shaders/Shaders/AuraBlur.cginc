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
float testZ = (1.0 / (depth + _ProjectionParams.g) - _ZBufferParams.w) / _ZBufferParams.z;

float step = max(radius / (maxRadius + 1), 1);

float result = radius;
// Iterate over rows in an order intended to maximize the chance that we find a nearby pixel early and can skip
// texture accesses.
[loop] for (int j = 0; j < dSize; j++)
{
	float y = d[j];
	if (abs(y) >= result)
		break;
	float2 uv2 = uv + float2(-maxRadius, y) * step / _ScreenParams.xy;
	// Iterate over columns in order to be easy to parallelize.
	[unroll] for (float x = -maxRadius; x <= maxRadius; x++)
	{
		float r = sqrt(x * x + y * y) * step;
		if (result > r)
		{
			float sceneZ = UNITY_SAMPLE_DEPTH(tex2D(DepthTexture, uv2));
#ifdef UNITY_REVERSED_Z 
			if (sceneZ >= testZ && tex2D(GrabTexture, uv2).a == 0)
				result = r;
#else
			if (sceneZ <= testZ && tex2D(GrabTexture, uv2).a == 0)
				result = r;
#endif
		}
		uv2.x += step / _ScreenParams.x;
	}
}

return result / radius;