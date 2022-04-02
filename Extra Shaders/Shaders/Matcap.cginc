float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
float3 viewReflection = mul( UNITY_MATRIX_V, float4(viewReflectDirection,0) ).xyz;
float2 baseUV = (viewReflection.xy/length((viewReflection.xyz+float3(0,0,1))));
float2 edgeUV = normalize(mul( UNITY_MATRIX_V, float4(normalDirection-viewDirection*dot(normalDirection, viewDirection),0) ).xy);
float2 matcapUV = saturate(lerp(baseUV, edgeUV,step(-normalDirection.z,0.0))*0.5+0.5);
return matcapUV;
