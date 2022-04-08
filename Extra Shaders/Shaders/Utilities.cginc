// Compute the rotation of "vec" around the axis that takes "from" to "to". "from" and "to" must be normalized.
float3 RotateVector(float3 vec, float3 from, float3 to) {
	// r = the normalized axis of rotation
	// theta = the angle to rotate by
	float3 r_sin_theta = cross(from, to); // r * sin(theta)
	float sin_theta_squared = dot(r_sin_theta, r_sin_theta); // sin(theta)^2
	float cos_theta = dot(from, to); // cos(theta)
	return cos_theta * vec + cross(r_sin_theta, vec) + (1 - cos_theta) * r_sin_theta * dot(r_sin_theta, vec) / sin_theta_squared;
}