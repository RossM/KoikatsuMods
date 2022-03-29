// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2659,x:32951,y:32653,varname:node_2659,prsc:2|emission-3538-OUT;n:type:ShaderForge.SFN_Tex2d,id:2310,x:31472,y:32955,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3693,x:31691,y:32756,varname:node_3693,prsc:2|A-4034-RGB,B-2310-RGB,T-1481-OUT;n:type:ShaderForge.SFN_Tex2d,id:8731,x:31691,y:32955,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:_ColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3341,x:31887,y:32756,varname:node_3341,prsc:2|A-3693-OUT,B-8731-RGB,T-882-OUT;n:type:ShaderForge.SFN_Tex2d,id:4034,x:31472,y:32699,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9898,x:31887,y:32955,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:3678,x:32089,y:32756,varname:node_3678,prsc:2|A-3341-OUT,B-9898-RGB,T-1555-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:1555,x:31887,y:33220,ptovrint:False,ptlb:UseNormalMap,ptin:_UseNormalMap,varname:_UseNormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_ToggleProperty,id:1481,x:31472,y:33220,ptovrint:False,ptlb:UseDetailMask,ptin:_UseDetailMask,varname:_UseDetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_ToggleProperty,id:882,x:31691,y:33220,ptovrint:False,ptlb:UseColorMask,ptin:_UseColorMask,varname:_UseColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Divide,id:3114,x:31877,y:33632,varname:matcapUV,prsc:2|A-7442-OUT,B-5079-OUT;n:type:ShaderForge.SFN_Length,id:5079,x:31677,y:33632,varname:node_5079,prsc:2|IN-2828-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7442,x:31677,y:33482,varname:node_7442,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2682-XYZ;n:type:ShaderForge.SFN_Add,id:2828,x:31491,y:33632,varname:node_2828,prsc:2|A-2682-XYZ,B-9905-OUT;n:type:ShaderForge.SFN_Transform,id:2682,x:31280,y:33560,varname:viewSpaceReflection,prsc:2,tffrom:0,tfto:3|IN-6010-OUT;n:type:ShaderForge.SFN_Vector3,id:9905,x:31280,y:33787,varname:node_9905,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ViewReflectionVector,id:6010,x:31071,y:33560,varname:node_6010,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4223,x:32089,y:32955,ptovrint:False,ptlb:Matcap,ptin:_Matcap,varname:_Matcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3114-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:6249,x:32089,y:33220,ptovrint:False,ptlb:UseMatcap,ptin:_UseMatcap,varname:_UseMatcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:2081,x:32297,y:32756,varname:node_2081,prsc:2|A-3678-OUT,B-4223-RGB,T-6249-OUT;n:type:ShaderForge.SFN_Tex2d,id:9160,x:32297,y:32955,ptovrint:False,ptlb:LineMask,ptin:_LineMask,varname:_LineMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ToggleProperty,id:7426,x:32297,y:33220,ptovrint:False,ptlb:UseLineMask,ptin:_UseLineMask,varname:_UseLineMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:4174,x:32497,y:32756,varname:node_4174,prsc:2|A-2081-OUT,B-9160-RGB,T-7426-OUT;n:type:ShaderForge.SFN_Lerp,id:3538,x:32687,y:32756,varname:node_3538,prsc:2|A-4174-OUT,B-1419-RGB,T-2831-OUT;n:type:ShaderForge.SFN_Tex2d,id:1419,x:32497,y:32955,ptovrint:False,ptlb:AlphaMask,ptin:_AlphaMask,varname:_AlphaMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ToggleProperty,id:2831,x:32497,y:33220,ptovrint:False,ptlb:UseAlphaMask,ptin:_UseAlphaMask,varname:_UseAlphaMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;proporder:4034-2310-8731-9898-4223-9160-1419-1555-1481-882-6249-7426-2831;pass:END;sub:END;*/

Shader "Debug/Textures" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _DetailMask ("DetailMask", 2D) = "black" {}
        _ColorMask ("ColorMask", 2D) = "white" {}
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _Matcap ("Matcap", 2D) = "white" {}
        _LineMask ("LineMask", 2D) = "white" {}
        _AlphaMask ("AlphaMask", 2D) = "white" {}
        [MaterialToggle] _UseNormalMap ("UseNormalMap", Float ) = 0
        [MaterialToggle] _UseDetailMask ("UseDetailMask", Float ) = 0
        [MaterialToggle] _UseColorMask ("UseColorMask", Float ) = 0
        [MaterialToggle] _UseMatcap ("UseMatcap", Float ) = 0
        [MaterialToggle] _UseLineMask ("UseLineMask", Float ) = 0
        [MaterialToggle] _UseAlphaMask ("UseAlphaMask", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform fixed _UseNormalMap;
            uniform fixed _UseDetailMask;
            uniform fixed _UseColorMask;
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform fixed _UseMatcap;
            uniform sampler2D _LineMask; uniform float4 _LineMask_ST;
            uniform fixed _UseLineMask;
            uniform sampler2D _AlphaMask; uniform float4 _AlphaMask_ST;
            uniform fixed _UseAlphaMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 viewSpaceReflection = mul( UNITY_MATRIX_V, float4(viewReflectDirection,0) ).xyz;
                float2 matcapUV = (viewSpaceReflection.rgb.rg/length((viewSpaceReflection.rgb+float3(0,0,1))));
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float4 _LineMask_var = tex2D(_LineMask,TRANSFORM_TEX(i.uv0, _LineMask));
                float4 _AlphaMask_var = tex2D(_AlphaMask,TRANSFORM_TEX(i.uv0, _AlphaMask));
                float3 emissive = lerp(lerp(lerp(lerp(lerp(lerp(_MainTex_var.rgb,_DetailMask_var.rgb,_UseDetailMask),_ColorMask_var.rgb,_UseColorMask),_NormalMap_var.rgb,_UseNormalMap),_Matcap_var.rgb,_UseMatcap),_LineMask_var.rgb,_UseLineMask),_AlphaMask_var.rgb,_UseAlphaMask);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
