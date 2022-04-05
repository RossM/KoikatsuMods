// float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(DepthTexture, UNITY_PROJ_COORD(float4(uv, 0, 1))))) - _ProjectionParams.g);
// Upgrade NOTE: excluded shader from DX11 because it uses wrong array syntax (type[size] name)
#pragma exclude_renderers d3d11
const int dirSteps = 24;
const int distSteps = 10;
float2 dir[dirSteps];

radius *= length(_ScreenParams.xy) / centerZ;

for (int i = 0; i < dirSteps; i++)
{
	float r = 6.2831853 * i / dirSteps;
	dir[i] = (radius / distSteps) * float2(sin(r), cos(r)) / _ScreenParams.xy;
}

float result = 1;
[unroll] for (int j = distSteps; j > 0; j--)
{
	int step = (uint)distSteps / (uint)j;
	[unroll] for (int i = 0; i < dirSteps; i += step)
	{
		float sceneZ = max(0, LinearEyeDepth(UNITY_SAMPLE_DEPTH(tex2D(DepthTexture, uv + dir[i] * j))) - _ProjectionParams.g);
		if (sceneZ <= depth && tex2D(GrabTexture, uv + dir[i] * j).a == 0)
			result = (float)(j - 1) / distSteps;
	}
}

return result;