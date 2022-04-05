// float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(DepthTexture, UNITY_PROJ_COORD(float4(uv, 0, 1))))) - _ProjectionParams.g);
// Upgrade NOTE: excluded shader from DX11 because it uses wrong array syntax (type[size] name)
#pragma exclude_renderers d3d11
const int dirSteps = 48;
const int distSteps = 12;
float2 dir[dirSteps];

float centerZ = -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;

radius *= length(_ScreenParams.xy) / centerZ;

for (int i = 0; i < dirSteps; i++)
{
	float r = 6.2831853 * i / dirSteps;
	dir[i] = (radius / distSteps) * float2(sin(r), cos(r)) / _ScreenParams.xy;
}

float result = 1;
for (int j = distSteps; j > 0; j--)
{
	int step = ((uint)distSteps / (uint)j);
	for (int i = 0; i < dirSteps; i += step)
	{
		float sceneZ = max(0, LinearEyeDepth(UNITY_SAMPLE_DEPTH(tex2D(DepthTexture, uv + dir[i] * j))) - _ProjectionParams.g);
		if (sceneZ <= depth)
			result = (float)(j - 1) / distSteps;
	}
}

return result;