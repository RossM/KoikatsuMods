// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:100,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8185,x:34135,y:31327,cmnt:This shader displays a billboard image at the center of the object. The image goes on top of all other objects but fades out if this object is too far behind another object.,varname:node_8185,prsc:2|emission-3707-OUT,alpha-1055-OUT,clip-6466-OUT;n:type:ShaderForge.SFN_RemapRange,id:3507,x:32746,y:31394,varname:baseUVold,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5727-OUT;n:type:ShaderForge.SFN_Tex2d,id:3600,x:33106,y:31394,ptovrint:False,ptlb:StickerTex,ptin:_StickerTex,varname:_StickerTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b724cfa04616f0498fd26177799a9b2,ntxv:0,isnm:False|UVIN-2917-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9753,x:33316,y:31748,ptovrint:False,ptlb:AlphaCutoff,ptin:_AlphaCutoff,varname:_AlphaCutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Step,id:9501,x:33510,y:31655,varname:node_9501,prsc:2|A-9753-OUT,B-1055-OUT;n:type:ShaderForge.SFN_Color,id:6184,x:33106,y:31165,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1055,x:33316,y:31535,varname:alpha,prsc:2|A-6184-A,B-3600-A,C-8658-OUT;n:type:ShaderForge.SFN_SceneDepth,id:7935,x:32366,y:32214,varname:sceneZ2,prsc:2;n:type:ShaderForge.SFN_InverseLerp,id:9092,x:32790,y:31924,varname:node_9092,prsc:2|A-1259-OUT,B-8876-OUT,V-1224-OUT;n:type:ShaderForge.SFN_Clamp01,id:8658,x:32981,y:31924,varname:hideFactor,prsc:2|IN-9092-OUT;n:type:ShaderForge.SFN_Subtract,id:6322,x:31885,y:32056,varname:hideZnear,prsc:2|A-9975-OUT,B-4850-OUT;n:type:ShaderForge.SFN_Multiply,id:4850,x:31701,y:32056,varname:node_4850,prsc:2|A-4675-OUT,B-666-OUT;n:type:ShaderForge.SFN_ValueProperty,id:666,x:31510,y:32148,ptovrint:False,ptlb:HideDepth,ptin:_HideDepth,varname:_HideDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Code,id:2680,x:31063,y:31989,varname:objZ2,prsc:2,code:cgBlAHQAdQByAG4AIAAtAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AVgBpAGUAdwBQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQAuAHoAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwA7AA==,output:0,fname:GetObjectCenterZ,width:247,height:132;n:type:ShaderForge.SFN_ObjectScale,id:4392,x:30270,y:31520,varname:node_4392,prsc:2,rcp:False;n:type:ShaderForge.SFN_Lerp,id:6623,x:32062,y:32205,varname:hideZfar,prsc:2|A-6322-OUT,B-7373-OUT,T-8917-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8917,x:31864,y:32321,ptovrint:False,ptlb:FadeInterval,ptin:_FadeInterval,varname:_FadeInterval,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Code,id:7166,x:32221,y:32379,varname:node_7166,prsc:2,code:cgBlAHQAdQByAG4AIABtAGEAeAAoADAALABMAGkAbgBlAGEAcgBFAHkAZQBEAGUAcAB0AGgAIAAoAFUATgBJAFQAWQBfAFMAQQBNAFAATABFAF8ARABFAFAAVABIACgAdABlAHgAMgBEAHAAcgBvAGoAKABfAEMAYQBtAGUAcgBhAEQAZQBwAHQAaABUAGUAeAB0AHUAcgBlACwAIABVAE4ASQBUAFkAXwBQAFIATwBKAF8AQwBPAE8AUgBEACgAQwBvAG0AcAB1AHQAZQBTAGMAcgBlAGUAbgBQAG8AcwAoAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AQwBsAGkAcABQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQApACkAKQApACkAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwApADsA,output:0,fname:GetObjectCenterDepth,width:247,height:132;n:type:ShaderForge.SFN_Lerp,id:1224,x:32564,y:32214,varname:testZ,prsc:2|A-7166-OUT,B-7935-OUT,T-8624-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:8624,x:32369,y:32572,ptovrint:False,ptlb:AllowPartialHiding,ptin:_AllowPartialHiding,cmnt:If not set hiding calculations use the center of the object for all pixels. If set hiding is done per-pixel.,varname:_AllowPartialHiding,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;n:type:ShaderForge.SFN_FragmentPosition,id:3188,x:30223,y:31220,varname:node_3188,prsc:2;n:type:ShaderForge.SFN_Transform,id:1748,x:30644,y:31283,varname:viewOffset,prsc:2,tffrom:0,tfto:3|IN-6306-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2153,x:31521,y:31255,varname:node_2153,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3636-OUT;n:type:ShaderForge.SFN_Divide,id:8774,x:31712,y:31255,varname:stickerBase,prsc:2|A-2153-OUT,B-5768-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1837,x:31348,y:31529,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5768,x:31536,y:31423,varname:node_5768,prsc:2|A-4675-OUT,B-1837-OUT;n:type:ShaderForge.SFN_Clamp01,id:2917,x:32925,y:31394,varname:stickerUV,prsc:2|IN-3507-OUT;n:type:ShaderForge.SFN_Subtract,id:6306,x:30449,y:31283,varname:node_6306,prsc:2|A-3188-XYZ,B-1714-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:1714,x:30223,y:31357,varname:node_1714,prsc:2;n:type:ShaderForge.SFN_Length,id:3661,x:30932,y:31378,varname:node_3661,prsc:2|IN-1748-XYZ;n:type:ShaderForge.SFN_Lerp,id:4675,x:31236,y:31421,varname:scale,prsc:2|A-3661-OUT,B-4808-OUT,T-6891-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:6891,x:30792,y:31744,ptovrint:False,ptlb:ScaleMode,ptin:_ScaleMode,cmnt:The default mode uses the geometry at the current pixel which gives good results on a sphere. The alternate mode is independent of geometry but less accurate.,varname:_ScaleMode,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:4808,x:30708,y:31520,varname:node_4808,prsc:2|A-7817-OUT,B-1821-OUT;n:type:ShaderForge.SFN_Vector1,id:1821,x:30493,y:31716,varname:node_1821,prsc:2,v1:0.3536;n:type:ShaderForge.SFN_Depth,id:2738,x:30462,y:31133,varname:node_2738,prsc:2;n:type:ShaderForge.SFN_Divide,id:2781,x:30646,y:31133,varname:node_2781,prsc:2|A-3741-OUT,B-2738-OUT;n:type:ShaderForge.SFN_Set,id:670,x:31374,y:31989,varname:objZ,prsc:2|IN-2680-OUT;n:type:ShaderForge.SFN_Get,id:9975,x:31680,y:31994,varname:node_9975,prsc:2|IN-670-OUT;n:type:ShaderForge.SFN_Get,id:7373,x:31864,y:32241,varname:node_7373,prsc:2|IN-670-OUT;n:type:ShaderForge.SFN_Get,id:3741,x:30462,y:31072,varname:node_3741,prsc:2|IN-670-OUT;n:type:ShaderForge.SFN_Multiply,id:2948,x:30998,y:31143,varname:node_2948,prsc:2|A-2781-OUT,B-1748-XYZ;n:type:ShaderForge.SFN_Length,id:7817,x:30476,y:31520,varname:node_7817,prsc:2|IN-4392-XYZ;n:type:ShaderForge.SFN_Lerp,id:3636,x:31236,y:31266,varname:node_3636,prsc:2|A-1748-XYZ,B-2948-OUT,T-6891-OUT;n:type:ShaderForge.SFN_Blend,id:3707,x:33316,y:31327,varname:node_3707,prsc:2,blmd:12,clmp:True|SRC-6184-RGB,DST-3600-RGB;n:type:ShaderForge.SFN_ValueProperty,id:2377,x:32220,y:31820,ptovrint:False,ptlb:AnimationSpeed,ptin:_AnimationSpeed,varname:_AnimationSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:5727,x:32572,y:31394,varname:node_5727,prsc:2|A-6754-OUT,B-3876-OUT,T-6648-OUT;n:type:ShaderForge.SFN_Multiply,id:6142,x:32422,y:31625,varname:node_6142,prsc:2|A-790-T,B-2377-OUT;n:type:ShaderForge.SFN_Time,id:790,x:32220,y:31625,varname:time,prsc:2;n:type:ShaderForge.SFN_Sin,id:6648,x:32977,y:31625,varname:node_6648,prsc:2|IN-2092-OUT;n:type:ShaderForge.SFN_Tau,id:6315,x:32650,y:31780,varname:node_6315,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7202,x:31712,y:31467,ptovrint:False,ptlb:AnimationScaleU,ptin:_AnimationScaleU,varname:_AnimationScaleU,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3641,x:31712,y:31587,ptovrint:False,ptlb:AnimationScaleV,ptin:_AnimationScaleV,varname:_AnimationScaleV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:8288,x:31889,y:31467,varname:node_8288,prsc:2|A-7202-OUT,B-3641-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7087,x:32050,y:31467,ptovrint:False,ptlb:AnimationOffsetU,ptin:_AnimationOffsetU,varname:_AnimationOffsetU,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6835,x:32050,y:31600,ptovrint:False,ptlb:AnimationOffsetV,ptin:_AnimationOffsetV,varname:_AnimationOffsetV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:972,x:32220,y:31467,varname:node_972,prsc:2|A-7087-OUT,B-6835-OUT;n:type:ShaderForge.SFN_Relay,id:6754,x:32162,y:31148,varname:node_6754,prsc:2|IN-8774-OUT;n:type:ShaderForge.SFN_Multiply,id:2081,x:32120,y:31280,varname:node_2081,prsc:2|A-8774-OUT,B-8288-OUT;n:type:ShaderForge.SFN_Add,id:3876,x:32389,y:31419,varname:node_3876,prsc:2|A-2081-OUT,B-972-OUT;n:type:ShaderForge.SFN_Add,id:3865,x:32617,y:31625,varname:node_3865,prsc:2|A-6142-OUT,B-3797-OUT;n:type:ShaderForge.SFN_Multiply,id:2092,x:32804,y:31625,varname:node_2092,prsc:2|A-3865-OUT,B-6315-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3797,x:32422,y:31805,ptovrint:False,ptlb:AnimationPhase,ptin:_AnimationPhase,varname:_AnimationPhase,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Code,id:6466,x:33683,y:31655,varname:node_6466,prsc:2,code:IwBpAGYAZABlAGYAIABVAE4ASQBUAFkAXwBQAEEAUwBTAF8AUwBIAEEARABPAFcAQwBBAFMAVABFAFIACgByAGUAdAB1AHIAbgAgADAAOwAKACMAZQBsAHMAZQAKAHIAZQB0AHUAcgBuACAAeAA7AAoAIwBlAG4AZABpAGYA,output:0,fname:CheckShadowcaster,width:247,height:132,input:0,input_1_label:x|A-9501-OUT;n:type:ShaderForge.SFN_Max,id:8876,x:32564,y:31924,varname:node_8876,prsc:2|A-6322-OUT,B-6623-OUT;n:type:ShaderForge.SFN_Min,id:1259,x:32564,y:32061,varname:node_1259,prsc:2|A-6322-OUT,B-6623-OUT;proporder:3600-9753-6184-666-8917-8624-1837-6891-2377-7087-6835-7202-3641-3797;pass:END;sub:END;*/

Shader "Custom/Sticker" {
    Properties {
        _StickerTex ("StickerTex", 2D) = "white" {}
        _AlphaCutoff ("AlphaCutoff", Float ) = 0.01
        _Color ("Color", Color) = (1,1,1,1)
        _HideDepth ("HideDepth", Float ) = 0
        _FadeInterval ("FadeInterval", Float ) = 0
        [MaterialToggle] _AllowPartialHiding ("AllowPartialHiding", Float ) = 1
        _Radius ("Radius", Float ) = 1
        [MaterialToggle] _ScaleMode ("ScaleMode", Float ) = 0
        _AnimationSpeed ("AnimationSpeed", Float ) = 0
        _AnimationOffsetU ("AnimationOffsetU", Float ) = 0
        _AnimationOffsetV ("AnimationOffsetV", Float ) = 0.1
        _AnimationScaleU ("AnimationScaleU", Float ) = 1
        _AnimationScaleV ("AnimationScaleV", Float ) = 1
        _AnimationPhase ("AnimationPhase", Float ) = 0
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
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _StickerTex; uniform float4 _StickerTex_ST;
            uniform float _AlphaCutoff;
            uniform float4 _Color;
            uniform float _HideDepth;
            float GetObjectCenterZ(){
            return -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;
            }
            
            uniform float _FadeInterval;
            float GetObjectCenterDepth(){
            return max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(ComputeScreenPos(UnityObjectToClipPos(float3(0,0,0))))))) - _ProjectionParams.g);
            }
            
            uniform fixed _AllowPartialHiding;
            uniform float _Radius;
            uniform fixed _ScaleMode;
            uniform float _AnimationSpeed;
            uniform float _AnimationScaleU;
            uniform float _AnimationScaleV;
            uniform float _AnimationOffsetU;
            uniform float _AnimationOffsetV;
            uniform float _AnimationPhase;
            float CheckShadowcaster( float x ){
            #ifdef UNITY_PASS_SHADOWCASTER
            return 0;
            #else
            return x;
            #endif
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 viewOffset = mul( UNITY_MATRIX_V, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz;
                float objZ = GetObjectCenterZ();
                float scale = lerp(length(viewOffset.rgb),(length(objScale)*0.3536),_ScaleMode);
                float2 stickerBase = (lerp(viewOffset.rgb,((objZ/partZ)*viewOffset.rgb),_ScaleMode).rg/(scale*_Radius));
                float4 time = _Time + _TimeEditor;
                float2 stickerUV = saturate((lerp(stickerBase,((stickerBase*float2(_AnimationScaleU,_AnimationScaleV))+float2(_AnimationOffsetU,_AnimationOffsetV)),sin((((time.g*_AnimationSpeed)+_AnimationPhase)*6.28318530718)))*0.5+0.5));
                float4 _StickerTex_var = tex2D(_StickerTex,TRANSFORM_TEX(stickerUV, _StickerTex));
                float hideZnear = (objZ-(scale*_HideDepth));
                float hideZfar = lerp(hideZnear,objZ,_FadeInterval);
                float alpha = (_Color.a*_StickerTex_var.a*saturate(((lerp(GetObjectCenterDepth(),sceneZ,_AllowPartialHiding)-min(hideZnear,hideZfar))/(max(hideZnear,hideZfar)-min(hideZnear,hideZfar)))));
                clip(CheckShadowcaster( step(_AlphaCutoff,alpha) ) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = saturate((_Color.rgb > 0.5 ?  (1.0-(1.0-2.0*(_Color.rgb-0.5))*(1.0-_StickerTex_var.rgb)) : (2.0*_Color.rgb*_StickerTex_var.rgb)) );
                float3 finalColor = emissive;
                return fixed4(finalColor,alpha);
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _StickerTex; uniform float4 _StickerTex_ST;
            uniform float _AlphaCutoff;
            uniform float4 _Color;
            uniform float _HideDepth;
            float GetObjectCenterZ(){
            return -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;
            }
            
            uniform float _FadeInterval;
            float GetObjectCenterDepth(){
            return max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(ComputeScreenPos(UnityObjectToClipPos(float3(0,0,0))))))) - _ProjectionParams.g);
            }
            
            uniform fixed _AllowPartialHiding;
            uniform float _Radius;
            uniform fixed _ScaleMode;
            uniform float _AnimationSpeed;
            uniform float _AnimationScaleU;
            uniform float _AnimationScaleV;
            uniform float _AnimationOffsetU;
            uniform float _AnimationOffsetV;
            uniform float _AnimationPhase;
            float CheckShadowcaster( float x ){
            #ifdef UNITY_PASS_SHADOWCASTER
            return 0;
            #else
            return x;
            #endif
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 viewOffset = mul( UNITY_MATRIX_V, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz;
                float objZ = GetObjectCenterZ();
                float scale = lerp(length(viewOffset.rgb),(length(objScale)*0.3536),_ScaleMode);
                float2 stickerBase = (lerp(viewOffset.rgb,((objZ/partZ)*viewOffset.rgb),_ScaleMode).rg/(scale*_Radius));
                float4 time = _Time + _TimeEditor;
                float2 stickerUV = saturate((lerp(stickerBase,((stickerBase*float2(_AnimationScaleU,_AnimationScaleV))+float2(_AnimationOffsetU,_AnimationOffsetV)),sin((((time.g*_AnimationSpeed)+_AnimationPhase)*6.28318530718)))*0.5+0.5));
                float4 _StickerTex_var = tex2D(_StickerTex,TRANSFORM_TEX(stickerUV, _StickerTex));
                float hideZnear = (objZ-(scale*_HideDepth));
                float hideZfar = lerp(hideZnear,objZ,_FadeInterval);
                float alpha = (_Color.a*_StickerTex_var.a*saturate(((lerp(GetObjectCenterDepth(),sceneZ,_AllowPartialHiding)-min(hideZnear,hideZfar))/(max(hideZnear,hideZfar)-min(hideZnear,hideZfar)))));
                clip(CheckShadowcaster( step(_AlphaCutoff,alpha) ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
