// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:500,qpre:2,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:0,stmr:1,stmw:1,stcp:5,stps:0,stfa:0,stfz:1,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3142,x:33784,y:32600,varname:node_3142,prsc:2|normal-2255-RGB,emission-6325-OUT;n:type:ShaderForge.SFN_NormalVector,id:3273,x:31997,y:32742,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:4885,x:31997,y:32918,varname:node_4885,prsc:2;n:type:ShaderForge.SFN_Dot,id:6741,x:32227,y:32817,varname:node_6741,prsc:2,dt:1|A-3273-OUT,B-4885-OUT;n:type:ShaderForge.SFN_Append,id:250,x:32427,y:32817,varname:rampUV,prsc:2|A-6741-OUT,B-4044-OUT;n:type:ShaderForge.SFN_Vector1,id:4044,x:32227,y:33022,varname:node_4044,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:6601,x:32427,y:33022,ptovrint:False,ptlb:_RampG,ptin:_RampG,varname:__RampG,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4632,x:32606,y:32817,varname:_RampG_var,prsc:2,ntxv:0,isnm:False|UVIN-250-OUT,TEX-6601-TEX;n:type:ShaderForge.SFN_LightAttenuation,id:7401,x:32606,y:32663,varname:node_7401,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7993,x:32799,y:32817,varname:node_7993,prsc:2|A-7401-OUT,B-4632-R;n:type:ShaderForge.SFN_Color,id:9051,x:32769,y:32462,ptovrint:False,ptlb:_ambientshadowG,ptin:_ambientshadowG,varname:_ambientshadow,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_RemapRange,id:5297,x:32952,y:32599,varname:node_5297,prsc:2,frmn:0,frmx:1,tomn:2,tomx:0|IN-9051-A;n:type:ShaderForge.SFN_Color,id:9252,x:32952,y:32396,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.8,c3:0.8,c4:1;n:type:ShaderForge.SFN_Vector3,id:5412,x:32678,y:31993,varname:node_5412,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Lerp,id:6032,x:33321,y:32724,varname:node_6032,prsc:2|A-2871-OUT,B-9252-RGB,T-3328-OUT;n:type:ShaderForge.SFN_Vector3,id:2871,x:32952,y:32254,varname:node_2871,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:6325,x:33511,y:32804,varname:node_6325,prsc:2|A-6032-OUT,B-1791-RGB;n:type:ShaderForge.SFN_SceneColor,id:1791,x:33307,y:33022,varname:node_1791,prsc:2|UVIN-7770-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1788,x:32822,y:33022,varname:node_1788,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:2255,x:33511,y:32562,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_OneMinus,id:6025,x:32952,y:32817,varname:node_6025,prsc:2|IN-7993-OUT;n:type:ShaderForge.SFN_Multiply,id:3328,x:33142,y:32817,varname:node_3328,prsc:2|A-9252-A,B-5297-OUT,C-6025-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1891,x:32587,y:33304,varname:node_1891,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8254-XYZ;n:type:ShaderForge.SFN_NormalVector,id:277,x:32227,y:33307,prsc:2,pt:True;n:type:ShaderForge.SFN_Transform,id:8254,x:32408,y:33307,varname:node_8254,prsc:2,tffrom:0,tfto:3|IN-277-OUT;n:type:ShaderForge.SFN_Multiply,id:8864,x:32820,y:33304,varname:node_8864,prsc:2|A-1891-OUT,B-8820-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8178,x:32408,y:33561,ptovrint:False,ptlb:FakeRefraction,ptin:_FakeRefraction,varname:_FakeRefraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_RemapRange,id:8820,x:32587,y:33561,varname:node_8820,prsc:2,frmn:-1,frmx:1,tomn:-0.1,tomx:0.1|IN-8178-OUT;n:type:ShaderForge.SFN_Subtract,id:7770,x:33070,y:33022,varname:node_7770,prsc:2|A-1788-UVOUT,B-8864-OUT;proporder:9252-2255-8178;pass:END;sub:END;*/

Shader "Custom/TransparentShadow" {
    Properties {
        _ShadowColor ("ShadowColor", Color) = (0.8,0.8,0.8,1)
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _FakeRefraction ("FakeRefraction", Float ) = 0
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
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float2 rampUV = float2(max(0,dot(normalDirection,lightDirection)),0.0);
                float4 _RampG_var = tex2D(_RampG,TRANSFORM_TEX(rampUV, _RampG));
                float3 emissive = (lerp(float3(1,1,1),_ShadowColor.rgb,(_ShadowColor.a*(_ambientshadowG.a*-2.0+2.0)*(1.0 - (attenuation*_RampG_var.r))))*tex2D( _GrabTexture, (sceneUVs.rg-(mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb.rg*(_FakeRefraction*0.1+0.0)))).rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
