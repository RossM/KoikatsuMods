// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:500,qpre:2,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:0,stmr:1,stmw:1,stcp:5,stps:0,stfa:0,stfz:1,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3142,x:33722,y:32587,varname:node_3142,prsc:2|normal-2255-RGB,emission-6325-OUT;n:type:ShaderForge.SFN_NormalVector,id:3273,x:31615,y:32331,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:4885,x:31615,y:32507,varname:node_4885,prsc:2;n:type:ShaderForge.SFN_Dot,id:6741,x:31845,y:32406,varname:node_6741,prsc:2,dt:1|A-3273-OUT,B-4885-OUT;n:type:ShaderForge.SFN_Append,id:250,x:32045,y:32406,varname:rampUV,prsc:2|A-6741-OUT,B-4044-OUT;n:type:ShaderForge.SFN_Vector1,id:4044,x:31845,y:32611,varname:node_4044,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:6601,x:32045,y:32611,ptovrint:False,ptlb:_RampG,ptin:_RampG,varname:__RampG,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4632,x:32224,y:32406,varname:_RampG_var,prsc:2,ntxv:0,isnm:False|UVIN-250-OUT,TEX-6601-TEX;n:type:ShaderForge.SFN_LightAttenuation,id:7401,x:32224,y:32252,varname:node_7401,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7993,x:32417,y:32406,varname:node_7993,prsc:2|A-7401-OUT,B-4632-R;n:type:ShaderForge.SFN_Color,id:9051,x:32387,y:32051,ptovrint:False,ptlb:_ambientshadowG,ptin:_ambientshadowG,varname:_ambientshadow,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_RemapRange,id:5297,x:32570,y:32188,varname:node_5297,prsc:2,frmn:0,frmx:1,tomn:2,tomx:0|IN-9051-A;n:type:ShaderForge.SFN_Color,id:9252,x:32570,y:31985,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.8,c3:0.8,c4:1;n:type:ShaderForge.SFN_Lerp,id:6032,x:32939,y:32313,varname:node_6032,prsc:2|A-2871-OUT,B-9252-RGB,T-3328-OUT;n:type:ShaderForge.SFN_Vector3,id:2871,x:32570,y:31843,varname:node_2871,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:6325,x:33501,y:32856,varname:node_6325,prsc:2|A-7256-OUT,B-5571-OUT;n:type:ShaderForge.SFN_SceneColor,id:1791,x:32443,y:33532,varname:node_1791,prsc:2|UVIN-7770-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1788,x:32076,y:33532,varname:node_1788,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:2255,x:33501,y:32604,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_OneMinus,id:6025,x:32570,y:32406,varname:node_6025,prsc:2|IN-7993-OUT;n:type:ShaderForge.SFN_Multiply,id:3328,x:32760,y:32406,varname:node_3328,prsc:2|A-9252-A,B-5297-OUT,C-6025-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1891,x:31843,y:33690,varname:node_1891,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8254-XYZ;n:type:ShaderForge.SFN_NormalVector,id:277,x:31483,y:33693,prsc:2,pt:True;n:type:ShaderForge.SFN_Transform,id:8254,x:31664,y:33693,varname:node_8254,prsc:2,tffrom:0,tfto:3|IN-277-OUT;n:type:ShaderForge.SFN_Multiply,id:8864,x:32076,y:33690,varname:node_8864,prsc:2|A-1891-OUT,B-8820-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8178,x:31664,y:33947,ptovrint:False,ptlb:FakeRefraction,ptin:_FakeRefraction,varname:_FakeRefraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_RemapRange,id:8820,x:31843,y:33947,varname:node_8820,prsc:2,frmn:-1,frmx:1,tomn:-0.1,tomx:0.1|IN-8178-OUT;n:type:ShaderForge.SFN_Subtract,id:7770,x:32267,y:33532,varname:node_7770,prsc:2|A-1788-UVOUT,B-8864-OUT;n:type:ShaderForge.SFN_RemapRange,id:2198,x:32664,y:31444,varname:matcapUV,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5769-OUT;n:type:ShaderForge.SFN_Lerp,id:5769,x:32449,y:31444,varname:node_5769,prsc:2|A-6650-OUT,B-6253-OUT,T-7562-OUT;n:type:ShaderForge.SFN_Divide,id:6650,x:32197,y:31444,varname:node_6650,prsc:2|A-9577-OUT,B-9905-OUT;n:type:ShaderForge.SFN_Normalize,id:6253,x:32197,y:31623,varname:node_6253,prsc:2|IN-8259-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8259,x:31997,y:31623,varname:node_8259,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5559-XYZ;n:type:ShaderForge.SFN_Transform,id:5559,x:31796,y:31623,varname:node_5559,prsc:2,tffrom:0,tfto:3|IN-8979-OUT;n:type:ShaderForge.SFN_Vector3,id:4843,x:31600,y:31599,varname:node_4843,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Transform,id:604,x:31600,y:31372,varname:viewSpaceReflection,prsc:2,tffrom:0,tfto:3|IN-6963-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:6963,x:31391,y:31372,varname:node_6963,prsc:2;n:type:ShaderForge.SFN_Add,id:8824,x:31811,y:31444,varname:node_8824,prsc:2|A-604-XYZ,B-4843-OUT;n:type:ShaderForge.SFN_Length,id:9905,x:31997,y:31444,varname:node_9905,prsc:2|IN-8824-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9577,x:31997,y:31294,varname:node_9577,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-604-XYZ;n:type:ShaderForge.SFN_Step,id:7562,x:32197,y:31831,varname:node_7562,prsc:2|A-2651-OUT,B-6445-OUT;n:type:ShaderForge.SFN_Vector1,id:6445,x:31997,y:31876,varname:node_6445,prsc:2,v1:0;n:type:ShaderForge.SFN_Dot,id:2651,x:31796,y:31832,varname:node_2651,prsc:2,dt:0|A-8979-OUT,B-5771-OUT;n:type:ShaderForge.SFN_NormalVector,id:8979,x:31598,y:31832,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:5771,x:31598,y:31999,varname:node_5771,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4227,x:32880,y:31444,ptovrint:False,ptlb:Matcap,ptin:_Matcap,varname:_Matcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4e7f9841adbcd3c4db9e17dee6a1f471,ntxv:0,isnm:False|UVIN-2198-OUT;n:type:ShaderForge.SFN_Set,id:6799,x:33115,y:31444,varname:matcapRGB,prsc:2|IN-4227-RGB;n:type:ShaderForge.SFN_Set,id:312,x:33146,y:32313,varname:lightingRGB,prsc:2|IN-6032-OUT;n:type:ShaderForge.SFN_Get,id:7256,x:33265,y:32780,varname:node_7256,prsc:2|IN-312-OUT;n:type:ShaderForge.SFN_Set,id:8417,x:32626,y:33532,varname:backgroundRGB,prsc:2|IN-1791-RGB;n:type:ShaderForge.SFN_Tex2d,id:8248,x:32176,y:32858,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:5344,x:32155,y:33090,varname:node_5344,prsc:2|IN-6799-OUT;n:type:ShaderForge.SFN_Lerp,id:9949,x:32396,y:32858,varname:textureRGB,prsc:2|A-8248-RGB,B-5344-OUT,T-2344-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2344,x:32176,y:33186,ptovrint:False,ptlb:MatcapAlpha,ptin:_MatcapAlpha,varname:_MatcapAlpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:5079,x:33071,y:32856,varname:node_5079,prsc:2|A-9753-OUT,B-2515-OUT,T-4636-OUT;n:type:ShaderForge.SFN_Blend,id:2515,x:32847,y:32970,varname:node_2515,prsc:2,blmd:10,clmp:True|SRC-9753-OUT,DST-9421-OUT;n:type:ShaderForge.SFN_Get,id:9421,x:32600,y:33050,varname:node_9421,prsc:2|IN-8417-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4636,x:32847,y:33162,ptovrint:False,ptlb:Translucency,ptin:_Translucency,varname:_Translucency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Get,id:4153,x:33050,y:33024,varname:node_4153,prsc:2|IN-8417-OUT;n:type:ShaderForge.SFN_Lerp,id:5571,x:33286,y:32856,varname:node_5571,prsc:2|A-5079-OUT,B-4153-OUT,T-2185-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2185,x:33071,y:33139,ptovrint:False,ptlb:Transparency,ptin:_Transparency,varname:_Transparency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:3247,x:32396,y:33050,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:9753,x:32621,y:32856,varname:baseRGB,prsc:2|A-9949-OUT,B-3247-RGB;proporder:9252-2255-8178-4227-8248-2344-4636-2185-3247;pass:END;sub:END;*/

Shader "Custom/Translucent" {
    Properties {
        _ShadowColor ("ShadowColor", Color) = (0.8,0.8,0.8,1)
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _FakeRefraction ("FakeRefraction", Float ) = 0
        _Matcap ("Matcap", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _MatcapAlpha ("MatcapAlpha", Float ) = 0
        _Translucency ("Translucency", Float ) = 0
        _Transparency ("Transparency", Float ) = 1
        _Color ("Color", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest+500"
            "RenderType"="Opaque"
        }
        LOD 200
        GrabPass{ }
		Pass
		{
			ColorMask 0
			ZWrite On
		}
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _RampG; uniform float4 _RampG_ST;
            uniform float4 _ambientshadowG;
            uniform float4 _ShadowColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _FakeRefraction;
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MatcapAlpha;
            uniform float _Translucency;
            uniform float _Transparency;
            uniform float4 _Color;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float2 rampUV = float2(max(0,dot(normalDirection,lightDirection)),0.0);
                float4 _RampG_var = tex2D(_RampG,TRANSFORM_TEX(rampUV, _RampG));
                float3 lightingRGB = lerp(float3(1,1,1),_ShadowColor.rgb,(_ShadowColor.a*(_ambientshadowG.a*-2.0+2.0)*(1.0 - (attenuation*_RampG_var.r))));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 viewSpaceReflection = mul( UNITY_MATRIX_V, float4(viewReflectDirection,0) ).xyz;
                float2 matcapUV = (lerp((viewSpaceReflection.rgb.rg/length((viewSpaceReflection.rgb+float3(0,0,1)))),normalize(mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb.rg),step(dot(normalDirection,viewDirection),0.0))*0.5+0.5);
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float3 matcapRGB = _Matcap_var.rgb;
                float3 baseRGB = (lerp(_MainTex_var.rgb,matcapRGB,_MatcapAlpha)*_Color.rgb);
                float3 backgroundRGB = tex2D( _GrabTexture, (sceneUVs.rg-(mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb.rg*(_FakeRefraction*0.1+0.0)))).rgb;
                float3 emissive = (lightingRGB*lerp(lerp(baseRGB,saturate(( backgroundRGB > 0.5 ? (1.0-(1.0-2.0*(backgroundRGB-0.5))*(1.0-baseRGB)) : (2.0*backgroundRGB*baseRGB) )),_Translucency),backgroundRGB,_Transparency));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
