// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:51,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:7406,x:33073,y:32579,varname:node_7406,prsc:2|emission-1265-RGB,alpha-4585-OUT,clip-5434-OUT,voffset-8161-OUT;n:type:ShaderForge.SFN_Multiply,id:5291,x:32365,y:33030,varname:node_5291,prsc:2|A-6910-OUT,B-3080-OUT;n:type:ShaderForge.SFN_NormalVector,id:6910,x:32183,y:33030,prsc:2,pt:False;n:type:ShaderForge.SFN_Color,id:1265,x:31948,y:32611,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8897059,c2:0.150465,c3:0.2881167,c4:0.45;n:type:ShaderForge.SFN_Step,id:6787,x:32402,y:32888,varname:node_6787,prsc:2|A-4373-OUT,B-4585-OUT;n:type:ShaderForge.SFN_Vector1,id:4373,x:32183,y:32766,varname:node_4373,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:4585,x:32183,y:32839,varname:alpha,prsc:2|A-1265-A,B-1632-OUT;n:type:ShaderForge.SFN_Code,id:5434,x:32599,y:32886,varname:node_5434,prsc:2,code:IwBpAGYAZABlAGYAIABVAE4ASQBUAFkAXwBQAEEAUwBTAF8AUwBIAEEARABPAFcAQwBBAFMAVABFAFIACgByAGUAdAB1AHIAbgAgADAAOwAKACMAZQBsAHMAZQAKAHIAZQB0AHUAcgBuACAAeAA7AAoAIwBlAG4AZABpAGYA,output:0,fname:CheckShadowcaster,width:247,height:132,input:0,input_1_label:x|A-6787-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1279,x:31082,y:32691,ptovrint:False,ptlb:_GrabTexture,ptin:_GrabTexture,varname:__CameraDepthTexture,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Code,id:4496,x:31402,y:32972,varname:node_4496,prsc:2,code:IwBpAG4AYwBsAHUAZABlACAAIgBBAHUAcgBhAEIAbAB1AHIALgBjAGcAaQBuAGMAIgA=,output:0,fname:GetPixelDistance,width:247,height:168,input:12,input:1,input:0,input:0,input:12,input:0,input_1_label:GrabTexture,input_2_label:uv,input_3_label:depth,input_4_label:radius,input_5_label:DepthTexture,input_6_label:centerZ|A-1279-TEX,B-9209-UVOUT,C-9648-OUT,D-4905-OUT,E-8798-TEX,F-6106-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9209,x:31082,y:32854,varname:node_9209,prsc:2,sctp:2;n:type:ShaderForge.SFN_Depth,id:9648,x:31082,y:33011,varname:node_9648,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:1632,x:31733,y:32972,varname:node_1632,prsc:2|IN-4496-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4957,x:30444,y:32627,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:805,x:30833,y:33176,varname:node_805,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-3247-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8798,x:31082,y:33383,ptovrint:False,ptlb:_CameraDepthTexture,ptin:_CameraDepthTexture,varname:_node_8798,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:1093,x:30629,y:32627,varname:r,prsc:2|IN-4957-OUT;n:type:ShaderForge.SFN_Get,id:3247,x:30614,y:33176,varname:node_3247,prsc:2|IN-1093-OUT;n:type:ShaderForge.SFN_Relay,id:8161,x:32806,y:33030,varname:node_8161,prsc:2|IN-5291-OUT;n:type:ShaderForge.SFN_RemapRange,id:3080,x:32183,y:33185,varname:node_3080,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.2|IN-5052-OUT;n:type:ShaderForge.SFN_Get,id:5052,x:31991,y:33185,varname:node_5052,prsc:2|IN-1093-OUT;n:type:ShaderForge.SFN_Tex2d,id:338,x:30246,y:32973,ptovrint:False,ptlb:NoiseTex,ptin:_NoiseTex,varname:_NoiseTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9242421b1edc7d847a32ac92d5e0cb7b,ntxv:1,isnm:False|UVIN-7965-OUT;n:type:ShaderForge.SFN_ScreenPos,id:4710,x:29565,y:32975,varname:node_4710,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:5346,x:30423,y:32973,varname:node_5346,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-338-R;n:type:ShaderForge.SFN_Multiply,id:4905,x:31082,y:33176,varname:node_4905,prsc:2|A-4427-OUT,B-805-OUT;n:type:ShaderForge.SFN_Add,id:5948,x:29839,y:32974,varname:noiseUVpremul,prsc:2|A-4710-UVOUT,B-2891-OUT;n:type:ShaderForge.SFN_Append,id:4059,x:29348,y:33150,varname:node_4059,prsc:2|A-7563-OUT,B-3607-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7563,x:29139,y:33150,ptovrint:False,ptlb:AnimationU,ptin:_AnimationU,varname:_AnimationU,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3607,x:29139,y:33280,ptovrint:False,ptlb:AnimationV,ptin:_AnimationV,varname:_AnimationV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:4898,x:29348,y:33306,varname:t,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2891,x:29565,y:33150,varname:node_2891,prsc:2|A-4059-OUT,B-4898-T;n:type:ShaderForge.SFN_Code,id:9634,x:30254,y:32308,varname:node_9634,prsc:2,code:cgBlAHQAdQByAG4AIAAtAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AVgBpAGUAdwBQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQAuAHoAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwA7AA==,output:0,fname:GetCenterZ,width:247,height:132;n:type:ShaderForge.SFN_Set,id:7425,x:30574,y:32311,varname:centerZ,prsc:2|IN-9634-OUT;n:type:ShaderForge.SFN_Multiply,id:7965,x:30055,y:32974,varname:noiseUV,prsc:2|A-5948-OUT,B-1275-OUT;n:type:ShaderForge.SFN_Get,id:1275,x:29818,y:33117,varname:node_1275,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_Get,id:6106,x:31061,y:33551,varname:node_6106,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7494,x:30423,y:33219,ptovrint:False,ptlb:NoiseAmount,ptin:_NoiseAmount,varname:_NoiseAmount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1936,x:30635,y:32973,varname:node_1936,prsc:2|A-5346-OUT,B-7494-OUT;n:type:ShaderForge.SFN_Add,id:4427,x:30833,y:32973,varname:node_4427,prsc:2|A-1936-OUT,B-513-OUT;n:type:ShaderForge.SFN_Vector1,id:513,x:30635,y:33110,varname:node_513,prsc:2,v1:1;proporder:1265-4957-338-7563-3607-7494;pass:END;sub:END;*/

Shader "Custom/AuraBase" {
    Properties {
        _Color ("Color", Color) = (0.8897059,0.150465,0.2881167,0.45)
        _Radius ("Radius", Float ) = 0.1
        _NoiseTex ("NoiseTex", 2D) = "gray" {}
        _AnimationU ("AnimationU", Float ) = 0
        _AnimationV ("AnimationV", Float ) = 0
        _NoiseAmount ("NoiseAmount", Float ) = 0.5
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
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            float CheckShadowcaster( float x ){
            #ifdef UNITY_PASS_SHADOWCASTER
            return 0;
            #else
            return x;
            #endif
            }
            
            uniform sampler2D _GrabTexture; uniform float4 _GrabTexture_ST;
            float GetPixelDistance( sampler2D GrabTexture , float2 uv , float depth , float radius , sampler2D DepthTexture , float centerZ ){
            #include "AuraBlur.cginc"
            }
            
            uniform float _Radius;
            uniform sampler2D _CameraDepthTexture; uniform float4 _CameraDepthTexture_ST;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _AnimationU;
            uniform float _AnimationV;
            float GetCenterZ(){
            return -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;
            }
            
            uniform float _NoiseAmount;
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
                float r = _Radius;
                v.vertex.xyz += (v.normal*(r*0.2+0.0));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                float4 t = _Time + _TimeEditor;
                float centerZ = GetCenterZ();
                float2 noiseUV = ((float2(i.screenPos.x*(_ScreenParams.r/_ScreenParams.g), i.screenPos.y).rg+(float2(_AnimationU,_AnimationV)*t.g))*centerZ);
                float4 _NoiseTex_var = tex2D(_NoiseTex,TRANSFORM_TEX(noiseUV, _NoiseTex));
                float r = _Radius;
                float alpha = (_Color.a*(1.0 - GetPixelDistance( _GrabTexture , sceneUVs.rg , partZ , ((((_NoiseTex_var.r*2.0+-1.0)*_NoiseAmount)+1.0)*(r*0.1+0.0)) , _CameraDepthTexture , centerZ )));
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
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            float CheckShadowcaster( float x ){
            #ifdef UNITY_PASS_SHADOWCASTER
            return 0;
            #else
            return x;
            #endif
            }
            
            uniform sampler2D _GrabTexture; uniform float4 _GrabTexture_ST;
            float GetPixelDistance( sampler2D GrabTexture , float2 uv , float depth , float radius , sampler2D DepthTexture , float centerZ ){
            #include "AuraBlur.cginc"
            }
            
            uniform float _Radius;
            uniform sampler2D _CameraDepthTexture; uniform float4 _CameraDepthTexture_ST;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _AnimationU;
            uniform float _AnimationV;
            float GetCenterZ(){
            return -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;
            }
            
            uniform float _NoiseAmount;
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
                float r = _Radius;
                v.vertex.xyz += (v.normal*(r*0.2+0.0));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                float4 t = _Time + _TimeEditor;
                float centerZ = GetCenterZ();
                float2 noiseUV = ((float2(i.screenPos.x*(_ScreenParams.r/_ScreenParams.g), i.screenPos.y).rg+(float2(_AnimationU,_AnimationV)*t.g))*centerZ);
                float4 _NoiseTex_var = tex2D(_NoiseTex,TRANSFORM_TEX(noiseUV, _NoiseTex));
                float r = _Radius;
                float alpha = (_Color.a*(1.0 - GetPixelDistance( _GrabTexture , sceneUVs.rg , partZ , ((((_NoiseTex_var.r*2.0+-1.0)*_NoiseAmount)+1.0)*(r*0.1+0.0)) , _CameraDepthTexture , centerZ )));
                clip(CheckShadowcaster( step(0.01,alpha) ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
