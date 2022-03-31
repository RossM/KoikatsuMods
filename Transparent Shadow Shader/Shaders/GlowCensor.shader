// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:100,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False;n:type:ShaderForge.SFN_Final,id:8185,x:33519,y:31330,varname:node_8185,prsc:2|normal-4388-RGB,emission-8118-OUT,alpha-1055-OUT,clip-9501-OUT;n:type:ShaderForge.SFN_RemapRange,id:3507,x:32600,y:31375,varname:matcapUV,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8536-OUT;n:type:ShaderForge.SFN_Tex2d,id:3600,x:32792,y:31380,ptovrint:False,ptlb:Matcap,ptin:_Matcap,varname:_Matcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b724cfa04616f0498fd26177799a9b2,ntxv:0,isnm:False|UVIN-3507-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9753,x:33017,y:31734,ptovrint:False,ptlb:AlphaCutoff,ptin:_AlphaCutoff,varname:_AlphaCutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Step,id:9501,x:33211,y:31641,varname:node_9501,prsc:2|A-9753-OUT,B-1055-OUT;n:type:ShaderForge.SFN_Color,id:6184,x:32792,y:31154,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1055,x:33017,y:31521,varname:alpha,prsc:2|A-6184-A,B-3600-A;n:type:ShaderForge.SFN_Multiply,id:8118,x:33017,y:31380,varname:node_8118,prsc:2|A-6184-RGB,B-3600-RGB;n:type:ShaderForge.SFN_NormalVector,id:9059,x:31981,y:31375,prsc:2,pt:True;n:type:ShaderForge.SFN_Transform,id:9177,x:32166,y:31375,varname:node_9177,prsc:2,tffrom:0,tfto:3|IN-9059-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8536,x:32405,y:31375,varname:node_8536,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9177-XYZ;n:type:ShaderForge.SFN_Tex2d,id:4388,x:33190,y:31125,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;proporder:3600-9753-6184-4388;pass:END;sub:END;*/

Shader "Custom/GlowCensor" {
    Properties {
        _Matcap ("Matcap", 2D) = "white" {}
        _AlphaCutoff ("AlphaCutoff", Float ) = 0.01
        _Color ("Color", Color) = (1,1,1,1)
        _NormalMap ("NormalMap", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+100"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform float _AlphaCutoff;
            uniform float4 _Color;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 matcapUV = (mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb.rg*0.5+0.5);
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float alpha = (_Color.a*_Matcap_var.a);
                clip(step(_AlphaCutoff,alpha) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_Color.rgb*_Matcap_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,alpha);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
