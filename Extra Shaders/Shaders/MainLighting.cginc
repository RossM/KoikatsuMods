float3 GetRimLight(float3 normal, float3 view, float3 rimColor, float3 shadowColor, float rimpower, float rimV, float rimShadow, float fresnelScale, float fresnelBase) {
	float rimValue = saturate((pow((1.0 - max(0, dot(normal, view))), (rimpower * 9.0 + 1.0)) * fresnelScale + fresnelBase));
	float3 rimRGB = saturate((rimColor * rimV * rimValue * lerp(float3(1, 1, 1), shadowColor, saturate(rimShadow))));
	return rimRGB;
}