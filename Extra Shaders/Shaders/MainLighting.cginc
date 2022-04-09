uniform float4 _ambientshadowG;
float3 GetAdjustedShadowColor(float4 shadowColor, float shadowV)
{
	return lerp(float3(1, 1, 1), shadowColor.rgb, (shadowColor.a * (1.0 - _ambientshadowG.a) * shadowV));
}

float3 GetRimLight(float3 normal, float3 view, float3 rimColor, float3 shadowColor, float rimpower, float rimV, float rimShadow, float fresnelScale, float fresnelBase)
{
	float rimValue = saturate((pow((1.0 - max(0, dot(normal, view))), (rimpower * 9.0 + 1.0)) * fresnelScale + fresnelBase));
	float3 rimRGB = saturate((rimColor * rimV * rimValue * lerp(float3(1, 1, 1), shadowColor, saturate(rimShadow))));
	return rimRGB;
}

uniform sampler2D _RampG;
float GetRamp(float3 normal, sampler2D anotherRamp, float anotherRampFull)
{
	float3 light = normalize(_WorldSpaceLightPos0.xyz);
	float4 rampUV = float4(saturate(dot(normal, light)), 0, 0, 0);
	float4 _RampG_var = tex2Dlod(_RampG, rampUV);
	float4 _AnotherRamp_var = tex2Dlod(anotherRamp, rampUV);
	return lerp(_RampG_var.r, _AnotherRamp_var.r, anotherRampFull);
}
