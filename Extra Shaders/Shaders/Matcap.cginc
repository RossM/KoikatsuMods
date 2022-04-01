﻿float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
float3 viewReflection = mul( UNITY_MATRIX_V, float4(viewReflectDirection,0) ).xyz;
float2 matcapUV = (lerp((viewReflection.rgb.rg/length((viewReflection.rgb+float3(0,0,1)))),normalize(mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb.rg),step(dot(normalDirection,viewDirection),0.0))*0.5+0.5);
return matcapUV;
