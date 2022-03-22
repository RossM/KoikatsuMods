// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:2,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2030,x:33228,y:33294,varname:node_2030,prsc:2|normal-1583-RGB,custl-7836-OUT,alpha-7613-OUT,olwid-7056-OUT,olcol-6929-RGB;n:type:ShaderForge.SFN_Tex2d,id:3845,x:32484,y:32879,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-413-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:124,x:31332,y:32177,varname:node_124,prsc:2;n:type:ShaderForge.SFN_Transform,id:8182,x:31541,y:32177,varname:node_8182,prsc:2,tffrom:0,tfto:3|IN-124-OUT;n:type:ShaderForge.SFN_Add,id:8326,x:31752,y:32249,varname:node_8326,prsc:2|A-8182-XYZ,B-4082-OUT;n:type:ShaderForge.SFN_Vector3,id:4082,x:31541,y:32404,varname:node_4082,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Length,id:5783,x:31938,y:32249,varname:node_5783,prsc:2|IN-8326-OUT;n:type:ShaderForge.SFN_Divide,id:4765,x:32130,y:32171,varname:node_4765,prsc:2|A-8182-XYZ,B-5783-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2068,x:31595,y:33133,ptovrint:False,ptlb:Iridescence,ptin:_Iridescence,varname:_Iridescence,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.25;n:type:ShaderForge.SFN_ComponentMask,id:511,x:32358,y:32171,varname:node_511,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4765-OUT;n:type:ShaderForge.SFN_Set,id:2653,x:32548,y:32171,varname:MatcapUV,prsc:2|IN-511-OUT;n:type:ShaderForge.SFN_Get,id:8889,x:31574,y:33023,varname:node_8889,prsc:2|IN-2653-OUT;n:type:ShaderForge.SFN_TexCoord,id:9171,x:31830,y:32879,varname:node_9171,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Set,id:3417,x:32871,y:32795,varname:TextureRGB,prsc:2|IN-677-OUT;n:type:ShaderForge.SFN_Set,id:764,x:32723,y:32965,varname:TextureA,prsc:2|IN-3845-A;n:type:ShaderForge.SFN_Get,id:7613,x:32679,y:33608,varname:node_7613,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_Tex2d,id:1583,x:32484,y:33125,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-940-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:4886,x:31596,y:33948,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:3950,x:31770,y:33948,varname:node_3950,prsc:2,dt:0|A-4886-OUT,B-6006-OUT;n:type:ShaderForge.SFN_OneMinus,id:3552,x:31946,y:33948,varname:node_3552,prsc:2|IN-3950-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3605,x:31933,y:33848,ptovrint:False,ptlb:ShadowThreshold,ptin:_ShadowThreshold,varname:_ShadowThreshold,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Step,id:7925,x:32141,y:33948,varname:node_7925,prsc:2|A-3605-OUT,B-3552-OUT;n:type:ShaderForge.SFN_LightColor,id:6253,x:32484,y:33412,varname:node_6253,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:940,x:32147,y:33113,varname:node_940,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_LightVector,id:6006,x:31596,y:34110,varname:node_6006,prsc:2;n:type:ShaderForge.SFN_Vector4,id:2031,x:32290,y:33670,varname:node_2031,prsc:2,v1:1,v2:1,v3:1,v4:1;n:type:ShaderForge.SFN_Lerp,id:4093,x:32489,y:33670,varname:node_4093,prsc:2|A-2031-OUT,B-9971-OUT,T-6880-OUT;n:type:ShaderForge.SFN_Tex2d,id:5977,x:32480,y:32507,ptovrint:False,ptlb:HairGloss,ptin:_HairGloss,varname:_HairGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8724-OUT;n:type:ShaderForge.SFN_TexCoord,id:9017,x:31675,y:32448,varname:node_9017,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Color,id:4573,x:30903,y:33457,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:3106,x:31263,y:33646,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.8,c3:0.8,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5007,x:30903,y:33217,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:_ColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8424-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8424,x:30667,y:33217,varname:node_8424,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:2969,x:30903,y:33698,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6061,x:30903,y:33935,ptovrint:False,ptlb:Color3,ptin:_Color3,varname:_Color3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:2262,x:31227,y:33393,varname:node_2262,prsc:2,chbt:1|M-5007-RGB,R-4573-RGB,G-2969-RGB,B-6061-RGB,BTM-6845-OUT;n:type:ShaderForge.SFN_Vector4,id:6845,x:30903,y:34151,varname:node_6845,prsc:2,v1:1,v2:1,v3:1,v4:1;n:type:ShaderForge.SFN_ValueProperty,id:5352,x:31638,y:32899,ptovrint:False,ptlb:SpeclarHeight,ptin:_SpeclarHeight,varname:_SpeclarHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.95;n:type:ShaderForge.SFN_Lerp,id:4276,x:31869,y:32746,varname:node_4276,prsc:2|A-4710-OUT,B-6987-OUT,T-5352-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4710,x:31675,y:32601,varname:node_4710,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4808-XYZ;n:type:ShaderForge.SFN_Append,id:5885,x:32034,y:32642,varname:node_5885,prsc:2|A-1908-OUT,B-4276-OUT;n:type:ShaderForge.SFN_Color,id:6929,x:32669,y:33885,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:_LineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7056,x:32679,y:33727,ptovrint:False,ptlb:LineWidth,ptin:_LineWidth,varname:_LineWidth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_TexCoord,id:6774,x:31326,y:31888,varname:node_6774,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5789,x:31516,y:31888,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-6774-UVOUT;n:type:ShaderForge.SFN_Set,id:8630,x:31730,y:32026,varname:DetailMaskB,prsc:2|IN-5789-B;n:type:ShaderForge.SFN_Multiply,id:677,x:32670,y:32795,varname:node_677,prsc:2|A-5605-OUT,B-3845-RGB;n:type:ShaderForge.SFN_Set,id:7022,x:31695,y:33646,varname:ShadowColor2,prsc:2|IN-7762-OUT;n:type:ShaderForge.SFN_Set,id:874,x:32707,y:32507,varname:GlossRGB,prsc:2|IN-5977-RGB;n:type:ShaderForge.SFN_Add,id:7836,x:32967,y:33420,varname:node_7836,prsc:2|A-9699-OUT,B-8900-OUT;n:type:ShaderForge.SFN_Get,id:8900,x:32756,y:33531,varname:node_8900,prsc:2|IN-874-OUT;n:type:ShaderForge.SFN_Add,id:8724,x:32212,y:32475,varname:node_8724,prsc:2|A-9017-UVOUT,B-5885-OUT;n:type:ShaderForge.SFN_Vector1,id:1908,x:31869,y:32625,varname:node_1908,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6987,x:31675,y:32792,varname:node_6987,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:8944,x:31317,y:32601,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:4808,x:31495,y:32601,varname:node_4808,prsc:2,tffrom:0,tfto:3|IN-8944-OUT;n:type:ShaderForge.SFN_Multiply,id:9699,x:32700,y:33388,varname:node_9699,prsc:2|A-8979-OUT,B-6253-RGB,C-4093-OUT,D-8040-OUT;n:type:ShaderForge.SFN_Get,id:8979,x:32463,y:33351,varname:node_8979,prsc:2|IN-3417-OUT;n:type:ShaderForge.SFN_Get,id:5605,x:32459,y:32727,varname:node_5605,prsc:2|IN-324-OUT;n:type:ShaderForge.SFN_ComponentMask,id:543,x:31428,y:33393,varname:node_543,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2262-OUT;n:type:ShaderForge.SFN_Set,id:324,x:31639,y:33406,varname:ColorRGB,prsc:2|IN-543-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7762,x:31501,y:33646,varname:node_7762,prsc:2|IN-3106-RGB,IMIN-6029-OUT,IMAX-595-OUT,OMIN-7585-OUT,OMAX-595-OUT;n:type:ShaderForge.SFN_Vector1,id:595,x:31263,y:33997,varname:node_595,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6029,x:31263,y:33875,ptovrint:False,ptlb:ShadowLow,ptin:_ShadowLow,varname:_ShadowLow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:7585,x:31263,y:34125,varname:node_7585,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:9971,x:32269,y:33790,varname:node_9971,prsc:2|IN-7022-OUT;n:type:ShaderForge.SFN_Set,id:3312,x:31730,y:31907,varname:DetailMaskG,prsc:2|IN-5789-G;n:type:ShaderForge.SFN_Max,id:6880,x:32320,y:33948,varname:node_6880,prsc:2|A-7925-OUT,B-6539-OUT;n:type:ShaderForge.SFN_Get,id:6539,x:32120,y:34105,varname:node_6539,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8040,x:32386,y:33531,varname:node_8040,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9801,x:31830,y:33045,varname:node_9801,prsc:2|A-8889-OUT,B-2068-OUT;n:type:ShaderForge.SFN_Add,id:413,x:32090,y:32880,varname:node_413,prsc:2|A-9171-UVOUT,B-9801-OUT;proporder:3845-2068-1583-3605-5977-4573-3106-5007-2969-6061-5352-6929-7056-5789-6029;pass:END;sub:END;*/

Shader "Custom/Iridescent_old" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Iridescence ("Iridescence", Float ) = 0.25
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _ShadowThreshold ("ShadowThreshold", Float ) = 0.5
        _HairGloss ("HairGloss", 2D) = "black" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ShadowColor ("ShadowColor", Color) = (0.8,0.8,0.8,1)
        _ColorMask ("ColorMask", 2D) = "black" {}
        _Color2 ("Color2", Color) = (1,1,1,1)
        _Color3 ("Color3", Color) = (1,1,1,1)
        _SpeclarHeight ("SpeclarHeight", Float ) = 0.95
        _LineColor ("LineColor", Color) = (0.5,0.5,0.5,1)
        _LineWidth ("LineWidth", Float ) = 0.01
        _DetailMask ("DetailMask", 2D) = "black" {}
        _ShadowLow ("ShadowLow", Float ) = 0.3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="AlphaTest"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LineColor;
            uniform float _LineWidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*_LineWidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                return fixed4(_LineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Iridescence;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _ShadowThreshold;
            uniform sampler2D _HairGloss; uniform float4 _HairGloss_ST;
            uniform float4 _Color;
            uniform float4 _ShadowColor;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float _SpeclarHeight;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _ShadowLow;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 ColorRGB = (lerp( lerp( lerp( float4(1,1,1,1).rgb, _Color.rgb, _ColorMask_var.rgb.r ), _Color2.rgb, _ColorMask_var.rgb.g ), _Color3.rgb, _ColorMask_var.rgb.b )).rgb;
                float3 node_8182 = mul( UNITY_MATRIX_V, float4(viewReflectDirection,0) ).xyz;
                float2 MatcapUV = (node_8182.rgb/length((node_8182.rgb+float3(0,0,1)))).rg;
                float2 node_413 = (i.uv0+(MatcapUV*_Iridescence));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_413, _MainTex));
                float3 TextureRGB = (ColorRGB*_MainTex_var.rgb);
                float node_595 = 1.0;
                float node_7585 = 0.0;
                float3 ShadowColor2 = (node_7585 + ( (_ShadowColor.rgb - _ShadowLow) * (node_595 - node_7585) ) / (node_595 - _ShadowLow));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float DetailMaskG = _DetailMask_var.g;
                float2 node_8724 = (i.uv1+float2(0.0,lerp(mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.g,0.0,_SpeclarHeight)));
                float4 _HairGloss_var = tex2D(_HairGloss,TRANSFORM_TEX(node_8724, _HairGloss));
                float3 GlossRGB = _HairGloss_var.rgb;
                float3 finalColor = ((TextureRGB*_LightColor0.rgb*lerp(float4(1,1,1,1),float4(ShadowColor2,0.0),max(step(_ShadowThreshold,(1.0 - dot(normalDirection,lightDirection))),DetailMaskG))*attenuation)+GlossRGB).rgb;
                float TextureA = _MainTex_var.a;
                fixed4 finalRGBA = fixed4(finalColor,TextureA);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Iridescence;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _ShadowThreshold;
            uniform sampler2D _HairGloss; uniform float4 _HairGloss_ST;
            uniform float4 _Color;
            uniform float4 _ShadowColor;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float _SpeclarHeight;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _ShadowLow;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 ColorRGB = (lerp( lerp( lerp( float4(1,1,1,1).rgb, _Color.rgb, _ColorMask_var.rgb.r ), _Color2.rgb, _ColorMask_var.rgb.g ), _Color3.rgb, _ColorMask_var.rgb.b )).rgb;
                float3 node_8182 = mul( UNITY_MATRIX_V, float4(viewReflectDirection,0) ).xyz;
                float2 MatcapUV = (node_8182.rgb/length((node_8182.rgb+float3(0,0,1)))).rg;
                float2 node_413 = (i.uv0+(MatcapUV*_Iridescence));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_413, _MainTex));
                float3 TextureRGB = (ColorRGB*_MainTex_var.rgb);
                float node_595 = 1.0;
                float node_7585 = 0.0;
                float3 ShadowColor2 = (node_7585 + ( (_ShadowColor.rgb - _ShadowLow) * (node_595 - node_7585) ) / (node_595 - _ShadowLow));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float DetailMaskG = _DetailMask_var.g;
                float2 node_8724 = (i.uv1+float2(0.0,lerp(mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.g,0.0,_SpeclarHeight)));
                float4 _HairGloss_var = tex2D(_HairGloss,TRANSFORM_TEX(node_8724, _HairGloss));
                float3 GlossRGB = _HairGloss_var.rgb;
                float3 finalColor = ((TextureRGB*_LightColor0.rgb*lerp(float4(1,1,1,1),float4(ShadowColor2,0.0),max(step(_ShadowThreshold,(1.0 - dot(normalDirection,lightDirection))),DetailMaskG))*attenuation)+GlossRGB).rgb;
                float TextureA = _MainTex_var.a;
                fixed4 finalRGBA = fixed4(finalColor * TextureA,0);
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
            Cull Off
            
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
