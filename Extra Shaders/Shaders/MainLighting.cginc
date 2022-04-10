#include "Lighting.cginc"

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

float3 GetSpecular(float3 normal, float3 view, float4 specularColor, float specularPower)
{
	float3 light = normalize(_WorldSpaceLightPos0.xyz);
	float3 halfDirection = normalize(view + light);
	// This is the original calculation, which returns a curve that is very close to a straight line.
	// return saturate((pow(max(0, dot(normal, halfDirection)), specularPower * 256.0) * 5.0 + -4.0) * specularPower * specularColor.rgb * specularColor.a);
	// This version is faster to calculate and gives nearly identical results.
	return saturate((1.0 - (1.0 - dot(normal, halfDirection)) * specularPower * 1200.0) * specularPower * specularColor.rgb * specularColor.a);
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

float3 GetLightColor(float lighting, float3 adjustedShadowColor, float detailMaskG, float shadowExtend)
{
	return _LightColor0.rgb * lerp(adjustedShadowColor, float3(1, 1, 1), min((1.0 - detailMaskG), lerp((shadowExtend * -0.5 + 0.0), 1.0, lighting)));
}