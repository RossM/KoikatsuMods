// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:100,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False;n:type:ShaderForge.SFN_Final,id:8185,x:33519,y:31330,cmnt:This shader displays a billboard image at the center of the object. The image goes on top of all other objects but fades out if this object is too far behind another object.,varname:node_8185,prsc:2|emission-8118-OUT,alpha-1055-OUT,clip-9501-OUT;n:type:ShaderForge.SFN_RemapRange,id:3507,x:32395,y:31255,varname:matcapUV,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8774-OUT;n:type:ShaderForge.SFN_Tex2d,id:3600,x:32792,y:31380,ptovrint:False,ptlb:StickerTex,ptin:_StickerTex,varname:_StickerTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b724cfa04616f0498fd26177799a9b2,ntxv:0,isnm:False|UVIN-2917-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9753,x:33017,y:31734,ptovrint:False,ptlb:AlphaCutoff,ptin:_AlphaCutoff,varname:_AlphaCutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Step,id:9501,x:33211,y:31641,varname:node_9501,prsc:2|A-9753-OUT,B-1055-OUT;n:type:ShaderForge.SFN_Color,id:6184,x:32792,y:31154,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1055,x:33017,y:31521,varname:alpha,prsc:2|A-6184-A,B-3600-A,C-8658-OUT;n:type:ShaderForge.SFN_Multiply,id:8118,x:33017,y:31380,varname:node_8118,prsc:2|A-6184-RGB,B-3600-RGB;n:type:ShaderForge.SFN_SceneDepth,id:7935,x:31884,y:32154,varname:sceneZ2,prsc:2;n:type:ShaderForge.SFN_InverseLerp,id:9092,x:32283,y:31921,varname:node_9092,prsc:2|A-6322-OUT,B-6623-OUT,V-1224-OUT;n:type:ShaderForge.SFN_Clamp01,id:8658,x:32460,y:31921,varname:hideFactor,prsc:2|IN-9092-OUT;n:type:ShaderForge.SFN_Subtract,id:6322,x:31905,y:31791,varname:hideZ,prsc:2|A-9975-OUT,B-4850-OUT;n:type:ShaderForge.SFN_Multiply,id:4850,x:31721,y:31791,varname:node_4850,prsc:2|A-4675-OUT,B-666-OUT;n:type:ShaderForge.SFN_ValueProperty,id:666,x:31409,y:31852,ptovrint:False,ptlb:HideDepth,ptin:_HideDepth,varname:_HideDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Code,id:2680,x:31063,y:31989,varname:objZ2,prsc:2,code:cgBlAHQAdQByAG4AIAAtAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AVgBpAGUAdwBQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQAuAHoAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwA7AA==,output:0,fname:GetObjectCenterZ,width:247,height:132;n:type:ShaderForge.SFN_ObjectScale,id:4392,x:30773,y:31470,varname:node_4392,prsc:2,rcp:False;n:type:ShaderForge.SFN_Lerp,id:6623,x:32095,y:31921,varname:node_6623,prsc:2|A-6322-OUT,B-7373-OUT,T-8917-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8917,x:31884,y:32056,ptovrint:False,ptlb:FadeInterval,ptin:_FadeInterval,varname:_FadeInterval,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Code,id:7166,x:31739,y:32319,varname:node_7166,prsc:2,code:cgBlAHQAdQByAG4AIABtAGEAeAAoADAALABMAGkAbgBlAGEAcgBFAHkAZQBEAGUAcAB0AGgAIAAoAFUATgBJAFQAWQBfAFMAQQBNAFAATABFAF8ARABFAFAAVABIACgAdABlAHgAMgBEAHAAcgBvAGoAKABfAEMAYQBtAGUAcgBhAEQAZQBwAHQAaABUAGUAeAB0AHUAcgBlACwAIABVAE4ASQBUAFkAXwBQAFIATwBKAF8AQwBPAE8AUgBEACgAQwBvAG0AcAB1AHQAZQBTAGMAcgBlAGUAbgBQAG8AcwAoAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AQwBsAGkAcABQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQApACkAKQApACkAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwApADsA,output:0,fname:GetObjectCenterDepth,width:247,height:132;n:type:ShaderForge.SFN_Lerp,id:1224,x:32082,y:32154,varname:node_1224,prsc:2|A-7166-OUT,B-7935-OUT,T-8624-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:8624,x:31887,y:32512,ptovrint:False,ptlb:AllowPartialHiding,ptin:_AllowPartialHiding,cmnt:If not set hiding calculations use the center of the object for all pixels. If set hiding is done per-pixel.,varname:_AllowPartialHiding,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_FragmentPosition,id:3188,x:30726,y:31170,varname:node_3188,prsc:2;n:type:ShaderForge.SFN_Transform,id:1748,x:31147,y:31233,varname:viewOffset,prsc:2,tffrom:0,tfto:3|IN-6306-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2153,x:32039,y:31205,varname:node_2153,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3636-OUT;n:type:ShaderForge.SFN_Divide,id:8774,x:32228,y:31255,varname:node_8774,prsc:2|A-2153-OUT,B-5768-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1837,x:31851,y:31479,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5768,x:32039,y:31373,varname:node_5768,prsc:2|A-4675-OUT,B-1837-OUT;n:type:ShaderForge.SFN_Clamp01,id:2917,x:32611,y:31380,varname:stickerUV,prsc:2|IN-3507-OUT;n:type:ShaderForge.SFN_Subtract,id:6306,x:30952,y:31233,varname:node_6306,prsc:2|A-3188-XYZ,B-1714-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:1714,x:30726,y:31307,varname:node_1714,prsc:2;n:type:ShaderForge.SFN_Length,id:3661,x:31435,y:31328,varname:node_3661,prsc:2|IN-1748-XYZ;n:type:ShaderForge.SFN_Lerp,id:4675,x:31739,y:31371,varname:scale,prsc:2|A-3661-OUT,B-4808-OUT,T-6891-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:6891,x:31409,y:31644,ptovrint:False,ptlb:ScaleMode,ptin:_ScaleMode,cmnt:The default mode uses the geometry at the current pixel which gives good results on a sphere. The alternate mode is independent of geometry but less accurate.,varname:_ScaleMode,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:4808,x:31211,y:31470,varname:node_4808,prsc:2|A-7817-OUT,B-1821-OUT;n:type:ShaderForge.SFN_Vector1,id:1821,x:31011,y:31666,varname:node_1821,prsc:2,v1:0.3536;n:type:ShaderForge.SFN_Depth,id:2738,x:30965,y:31083,varname:node_2738,prsc:2;n:type:ShaderForge.SFN_Divide,id:2781,x:31149,y:31083,varname:node_2781,prsc:2|A-3741-OUT,B-2738-OUT;n:type:ShaderForge.SFN_Set,id:670,x:31374,y:31989,varname:objZ,prsc:2|IN-2680-OUT;n:type:ShaderForge.SFN_Get,id:9975,x:31700,y:31729,varname:node_9975,prsc:2|IN-670-OUT;n:type:ShaderForge.SFN_Get,id:7373,x:31884,y:31976,varname:node_7373,prsc:2|IN-670-OUT;n:type:ShaderForge.SFN_Get,id:3741,x:30965,y:31022,varname:node_3741,prsc:2|IN-670-OUT;n:type:ShaderForge.SFN_Multiply,id:2948,x:31501,y:31093,varname:node_2948,prsc:2|A-2781-OUT,B-1748-XYZ;n:type:ShaderForge.SFN_Length,id:7817,x:30979,y:31470,varname:node_7817,prsc:2|IN-4392-XYZ;n:type:ShaderForge.SFN_Lerp,id:3636,x:31739,y:31216,varname:node_3636,prsc:2|A-1748-XYZ,B-2948-OUT,T-6891-OUT;proporder:3600-9753-6184-666-8917-8624-1837-6891;pass:END;sub:END;*/

Shader "Custom/StickerCensor" {
    Properties {
        _StickerTex ("StickerTex", 2D) = "white" {}
        _AlphaCutoff ("AlphaCutoff", Float ) = 0.01
        _Color ("Color", Color) = (1,1,1,1)
        _HideDepth ("HideDepth", Float ) = 1
        _FadeInterval ("FadeInterval", Float ) = 0.2
        [MaterialToggle] _AllowPartialHiding ("AllowPartialHiding", Float ) = 0
        _Radius ("Radius", Float ) = 1
        [MaterialToggle] _ScaleMode ("ScaleMode", Float ) = 0
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
                float2 stickerUV = saturate(((lerp(viewOffset.rgb,((objZ/partZ)*viewOffset.rgb),_ScaleMode).rg/(scale*_Radius))*0.5+0.5));
                float4 _StickerTex_var = tex2D(_StickerTex,TRANSFORM_TEX(stickerUV, _StickerTex));
                float hideZ = (objZ-(scale*_HideDepth));
                float alpha = (_Color.a*_StickerTex_var.a*saturate(((lerp(GetObjectCenterDepth(),sceneZ,_AllowPartialHiding)-hideZ)/(lerp(hideZ,objZ,_FadeInterval)-hideZ))));
                clip(step(_AlphaCutoff,alpha) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_Color.rgb*_StickerTex_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,alpha);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
