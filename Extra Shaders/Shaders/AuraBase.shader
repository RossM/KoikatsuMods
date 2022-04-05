// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:51,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:7406,x:33073,y:32579,varname:node_7406,prsc:2|emission-1265-RGB,alpha-4585-OUT,clip-5434-OUT,voffset-758-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7639,x:32188,y:33209,ptovrint:False,ptlb:Size1,ptin:_Size1,varname:_Size1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:5291,x:32365,y:33030,varname:node_5291,prsc:2|A-6910-OUT,B-7639-OUT;n:type:ShaderForge.SFN_NormalVector,id:6910,x:32183,y:33030,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:4188,x:32188,y:33545,ptovrint:False,ptlb:Size2,ptin:_Size2,varname:_Size2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:9070,x:32364,y:33352,varname:node_9070,prsc:2|A-3253-XYZ,B-4188-OUT;n:type:ShaderForge.SFN_Add,id:758,x:32710,y:33030,varname:node_758,prsc:2|A-5291-OUT,B-9070-OUT;n:type:ShaderForge.SFN_Color,id:1265,x:31948,y:32611,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8897059,c2:0.150465,c3:0.2881167,c4:0.45;n:type:ShaderForge.SFN_Step,id:6787,x:32402,y:32888,varname:node_6787,prsc:2|A-4373-OUT,B-4585-OUT;n:type:ShaderForge.SFN_Vector1,id:4373,x:32183,y:32766,varname:node_4373,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:4585,x:32183,y:32839,varname:alpha,prsc:2|A-1265-A,B-1632-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:504,x:31781,y:33352,varname:node_504,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1695,x:31983,y:33352,varname:node_1695,prsc:2|A-504-XYZ,B-1134-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:1134,x:31781,y:33494,varname:node_1134,prsc:2;n:type:ShaderForge.SFN_Transform,id:3253,x:32188,y:33352,varname:node_3253,prsc:2,tffrom:0,tfto:1|IN-1695-OUT;n:type:ShaderForge.SFN_Code,id:5434,x:32599,y:32886,varname:node_5434,prsc:2,code:IwBpAGYAZABlAGYAIABVAE4ASQBUAFkAXwBQAEEAUwBTAF8AUwBIAEEARABPAFcAQwBBAFMAVABFAFIACgByAGUAdAB1AHIAbgAgADAAOwAKACMAZQBsAHMAZQAKAHIAZQB0AHUAcgBuACAAeAA7AAoAIwBlAG4AZABpAGYA,output:0,fname:CheckShadowcaster,width:247,height:132,input:0,input_1_label:x|A-6787-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1279,x:31122,y:32974,ptovrint:False,ptlb:_CameraDepthTexture,ptin:_CameraDepthTexture,varname:__CameraDepthTexture,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Code,id:4496,x:31402,y:32972,varname:node_4496,prsc:2,code:IwBpAG4AYwBsAHUAZABlACAAIgBBAHUAcgBhAEIAbAB1AHIALgBjAGcAaQBuAGMAIgA=,output:0,fname:GetPixelDistance,width:247,height:132,input:12,input:1,input:0,input:0,input_1_label:DepthTexture,input_2_label:uv,input_3_label:depth,input_4_label:radius|A-1279-TEX,B-9209-UVOUT,C-9648-OUT,D-805-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9209,x:31122,y:33137,varname:node_9209,prsc:2,sctp:2;n:type:ShaderForge.SFN_Depth,id:9648,x:31122,y:33294,varname:node_9648,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:1632,x:31733,y:32972,varname:node_1632,prsc:2|IN-4496-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4957,x:30886,y:33468,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:805,x:31122,y:33468,varname:node_805,prsc:2,frmn:0,frmx:1,tomn:0.01,tomx:0.1|IN-4957-OUT;proporder:7639-4188-1265-4957;pass:END;sub:END;*/

Shader "Custom/AuraBase" {
    Properties {
        _Size1 ("Size1", Float ) = 0.1
        _Size2 ("Size2", Float ) = 0.1
        _Color ("Color", Color) = (0.8897059,0.150465,0.2881167,0.45)
        _Radius ("Radius", Float ) = 0.1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZWrite Off
            
            Stencil {
                Ref 51
                Comp NotEqual
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Size1;
            uniform float _Size2;
            uniform float4 _Color;
            float CheckShadowcaster( float x ){
            #ifdef UNITY_PASS_SHADOWCASTER
            return 0;
            #else
            return x;
            #endif
            }
            
            uniform sampler2D _CameraDepthTexture; uniform float4 _CameraDepthTexture_ST;
            float GetPixelDistance( sampler2D DepthTexture , float2 uv , float depth , float radius ){
            #include "AuraBlur.cginc"
            }
            
            uniform float _Radius;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                v.vertex.xyz += ((v.normal*_Size1)+(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb*_Size2));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float alpha = (_Color.a*(1.0 - GetPixelDistance( _CameraDepthTexture , sceneUVs.rg , partZ , (_Radius*0.09+0.01) )));
                clip(CheckShadowcaster( step(0.01,alpha) ) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
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
            Cull Front
            
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
            uniform float _Size1;
            uniform float _Size2;
            uniform float4 _Color;
            float CheckShadowcaster( float x ){
            #ifdef UNITY_PASS_SHADOWCASTER
            return 0;
            #else
            return x;
            #endif
            }
            
            uniform sampler2D _CameraDepthTexture; uniform float4 _CameraDepthTexture_ST;
            float GetPixelDistance( sampler2D DepthTexture , float2 uv , float depth , float radius ){
            #include "AuraBlur.cginc"
            }
            
            uniform float _Radius;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                v.vertex.xyz += ((v.normal*_Size1)+(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb*_Size2));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float alpha = (_Color.a*(1.0 - GetPixelDistance( _CameraDepthTexture , sceneUVs.rg , partZ , (_Radius*0.09+0.01) )));
                clip(CheckShadowcaster( step(0.01,alpha) ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
