float2 GetMatcapUV(float3 normalDirection, float3 viewDirection) {
	float3 viewReflectDirection = -viewDirection + 2 * normalDirection * max(0, dot(viewDirection, normalDirection));
	float3 viewReflection = mul(UNITY_MATRIX_V, float4(viewReflectDirection, 0)).xyz;
	float2 baseUV = (viewReflection.xy / length((viewReflection.xyz + float3(0, 0, 1))));
	float2 matcapUV = saturate(baseUV * 0.5 + 0.5);
	return matcapUV;
}