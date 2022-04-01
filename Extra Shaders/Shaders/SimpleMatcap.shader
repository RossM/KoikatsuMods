// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:2,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8185,x:33519,y:31330,varname:node_8185,prsc:2|normal-574-RGB,emission-1796-OUT,alpha-1055-OUT,clip-9501-OUT;n:type:ShaderForge.SFN_Tex2d,id:3600,x:32792,y:31380,ptovrint:False,ptlb:Matcap,ptin:_Matcap,varname:_Matcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4e7f9841adbcd3c4db9e17dee6a1f471,ntxv:0,isnm:False|UVIN-9353-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9753,x:33017,y:31734,ptovrint:False,ptlb:AlphaCutoff,ptin:_AlphaCutoff,varname:_AlphaCutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Step,id:9501,x:33211,y:31641,varname:node_9501,prsc:2|A-9753-OUT,B-1055-OUT;n:type:ShaderForge.SFN_Color,id:6184,x:32792,y:31154,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7297,c2:0.7287,c3:0.7297,c4:1;n:type:ShaderForge.SFN_Multiply,id:1055,x:33017,y:31521,varname:alpha,prsc:2|A-6184-A,B-3600-A;n:type:ShaderForge.SFN_Blend,id:1796,x:33017,y:31364,varname:node_1796,prsc:2,blmd:12,clmp:True|SRC-3600-RGB,DST-6184-RGB;n:type:ShaderForge.SFN_Tex2d,id:574,x:33223,y:31088,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Code,id:9353,x:32400,y:31378,varname:matcapUV,prsc:2,code:IwBpAG4AYwBsAHUAZABlACAAIgBNAGEAdABjAGEAcAAuAGMAZwBpAG4AYwAiAA==,output:1,fname:GetMatcapUV,width:247,height:132,input:2,input:2,input_1_label:normalDirection,input_2_label:viewDirection|A-8715-OUT,B-183-OUT;n:type:ShaderForge.SFN_NormalVector,id:8715,x:32087,y:31256,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:183,x:32087,y:31412,varname:node_183,prsc:2;proporder:3600-9753-6184-574;pass:END;sub:END;*/

Shader "Custom/SimpleMatcap" {
    Properties {
        _Matcap ("Matcap", 2D) = "white" {}
        _AlphaCutoff ("AlphaCutoff", Float ) = 0.01
        _Color ("Color", Color) = (0.7297,0.7287,0.7297,1)
        _NormalMap ("NormalMap", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform float _AlphaCutoff;
            uniform float4 _Color;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            float2 GetMatcapUV( float3 normalDirection , float3 viewDirection ){
            #include "Matcap.cginc"
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 matcapUV = GetMatcapUV( normalDirection , viewDirection );
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float alpha = (_Color.a*_Matcap_var.a);
                clip(step(_AlphaCutoff,alpha) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = saturate((_Matcap_var.rgb > 0.5 ?  (1.0-(1.0-2.0*(_Matcap_var.rgb-0.5))*(1.0-_Color.rgb)) : (2.0*_Matcap_var.rgb*_Color.rgb)) );
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,alpha);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform float _AlphaCutoff;
            uniform float4 _Color;
            float2 GetMatcapUV( float3 normalDirection , float3 viewDirection ){
            #include "Matcap.cginc"
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 matcapUV = GetMatcapUV( normalDirection , viewDirection );
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float alpha = (_Color.a*_Matcap_var.a);
                clip(step(_AlphaCutoff,alpha) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
