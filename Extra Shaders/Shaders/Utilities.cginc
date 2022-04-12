#ifndef UTILITIES_CG_INCLUDED
#define UTILITIES_CG_INCLUDED

#if defined(SHADER_API_D3D11) || defined(SHADER_API_GLCORE)
#define SAMPLE_TEX2D_LOD(tex, uv, loc) tex.SampleLevel(sampler##tex, uv, loc)
#else
#define SAMPLE_TEX2D_LOD(tex, uv, loc) tex2Dlod(tex, float4(uv, 0, loc))
#endif

#ifndef SHADER_API_GLES
#define UNROLL [unroll]
#else
#define UNROLL
#endif

// Compute the rotation of "vec" around the axis that takes "from" to "to". "from" and "to" must be normalized.
float3 RotateVector(float3 vec, float3 from, float3 to) {
	// r = the normalized axis of rotation
	// theta = the angle to rotate by
	float3 r_sin_theta = cross(from, to); // r * sin(theta)
	float sin_theta_squared = dot(r_sin_theta, r_sin_theta); // sin(theta)^2
	float cos_theta = dot(from, to); // cos(theta)
	return cos_theta * vec + cross(r_sin_theta, vec) + (1 - cos_theta) * r_sin_theta * dot(r_sin_theta, vec) / sin_theta_squared;
}

#endif