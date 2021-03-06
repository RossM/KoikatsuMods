// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:TQBhAHQAYwBhAHAA,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2659,x:33392,y:32643,varname:node_2659,prsc:2|normal-6900-OUT,emission-3481-OUT;n:type:ShaderForge.SFN_Tex2d,id:2310,x:31291,y:32956,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3693,x:31510,y:32757,varname:node_3693,prsc:2|A-4034-RGB,B-2310-RGB,T-1481-OUT;n:type:ShaderForge.SFN_Tex2d,id:8731,x:31510,y:32956,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:_ColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3341,x:31706,y:32757,varname:node_3341,prsc:2|A-3693-OUT,B-8731-RGB,T-882-OUT;n:type:ShaderForge.SFN_Tex2d,id:4034,x:31291,y:32700,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9898,x:31706,y:32956,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:3678,x:31906,y:32757,varname:node_3678,prsc:2|A-3341-OUT,B-9898-RGB,T-1555-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:1555,x:31706,y:33221,ptovrint:False,ptlb:UseNormalMap,ptin:_UseNormalMap,varname:_UseNormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_ToggleProperty,id:1481,x:31291,y:33221,ptovrint:False,ptlb:UseDetailMask,ptin:_UseDetailMask,varname:_UseDetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_ToggleProperty,id:882,x:31510,y:33221,ptovrint:False,ptlb:UseColorMask,ptin:_UseColorMask,varname:_UseColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Divide,id:3114,x:30895,y:33777,varname:matcapPre,prsc:2|A-7442-OUT,B-5079-OUT;n:type:ShaderForge.SFN_Length,id:5079,x:30703,y:33777,varname:node_5079,prsc:2|IN-2828-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7442,x:30624,y:33607,varname:node_7442,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1969-OUT;n:type:ShaderForge.SFN_Add,id:2828,x:30509,y:33777,varname:node_2828,prsc:2|A-1969-OUT,B-9905-OUT;n:type:ShaderForge.SFN_Vector3,id:9905,x:30327,y:33959,varname:node_9905,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:4223,x:32089,y:32955,ptovrint:False,ptlb:Matcap,ptin:_Matcap,varname:_Matcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1649-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:6249,x:32089,y:33220,ptovrint:False,ptlb:UseMatcap,ptin:_UseMatcap,varname:_UseMatcap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:2081,x:32297,y:32756,varname:node_2081,prsc:2|A-4593-OUT,B-4223-RGB,T-6249-OUT;n:type:ShaderForge.SFN_Tex2d,id:9160,x:32297,y:32955,ptovrint:False,ptlb:LineMask,ptin:_LineMask,varname:_LineMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ToggleProperty,id:7426,x:32297,y:33220,ptovrint:False,ptlb:UseLineMask,ptin:_UseLineMask,varname:_UseLineMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:4174,x:32497,y:32756,varname:node_4174,prsc:2|A-2081-OUT,B-9160-RGB,T-7426-OUT;n:type:ShaderForge.SFN_Lerp,id:3538,x:32687,y:32756,varname:node_3538,prsc:2|A-4174-OUT,B-1419-RGB,T-2831-OUT;n:type:ShaderForge.SFN_Tex2d,id:1419,x:32497,y:32955,ptovrint:False,ptlb:AlphaMask,ptin:_AlphaMask,varname:_AlphaMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ToggleProperty,id:2831,x:32497,y:33220,ptovrint:False,ptlb:UseAlphaMask,ptin:_UseAlphaMask,varname:_UseAlphaMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_RemapRange,id:3150,x:31201,y:33775,varname:node_333,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3114-OUT;n:type:ShaderForge.SFN_Relay,id:6900,x:32078,y:32682,varname:node_6900,prsc:2|IN-9898-RGB;n:type:ShaderForge.SFN_ToggleProperty,id:8475,x:31365,y:33939,ptovrint:False,ptlb:MatcapMode,ptin:_MatcapMode,varname:_MatcapMode,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:4593,x:32089,y:32756,varname:node_4593,prsc:2|A-3678-OUT,B-1649-OUT,T-8806-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:8806,x:31903,y:33220,ptovrint:False,ptlb:UseMatcapUV,ptin:_UseMatcapUV,varname:_UseMatcapUV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_NormalVector,id:5900,x:29033,y:33135,prsc:2,pt:True;n:type:ShaderForge.SFN_Transform,id:3098,x:29234,y:33135,varname:node_3098,prsc:2,tffrom:0,tfto:3|IN-5900-OUT;n:type:ShaderForge.SFN_Reflect,id:1969,x:30327,y:33777,cmnt:This is the matcap mode used by Better Matcap. It is in fact worse.,varname:reflectedViewPosition,prsc:2|A-8599-OUT,B-8157-OUT;n:type:ShaderForge.SFN_Code,id:8599,x:29907,y:33780,varname:node_8599,prsc:2,code:cgBlAHQAdQByAG4AIABtAHUAbAAoAFUATgBJAFQAWQBfAE0AQQBUAFIASQBYAF8AVgAsACAAZgBsAG8AYQB0ADQAKABwAG8AcwBXAG8AcgBsAGQALgB4AHkAegAgAC0AIABfAFcAbwByAGwAZABTAHAAYQBjAGUAQwBhAG0AZQByAGEAUABvAHMALgB4AHkAegAsACAAMQApACkAOwA=,output:2,fname:ViewSpacePosition,width:247,height:132,input:2,input_1_label:posWorld|A-8308-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:8308,x:29711,y:33780,varname:node_8308,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1649,x:31900,y:33705,varname:matcapUV,prsc:2|IN-6601-OUT;n:type:ShaderForge.SFN_Set,id:6529,x:29421,y:33135,varname:viewNormal,prsc:2|IN-3098-XYZ;n:type:ShaderForge.SFN_Get,id:8157,x:30034,y:33947,varname:node_8157,prsc:2|IN-6529-OUT;n:type:ShaderForge.SFN_Code,id:2833,x:31167,y:33426,varname:node_2833,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABNAGEAdABjAGEAcABVAFYAKABuAG8AcgBtAGEAbAAsACAAdgBpAGUAdwApADsA,output:1,fname:_GetMatcapUV,width:247,height:132,input:2,input:2,input_1_label:normal,input_2_label:view|A-2690-OUT,B-6694-OUT;n:type:ShaderForge.SFN_NormalVector,id:2690,x:30854,y:33304,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:6694,x:30854,y:33460,varname:node_6694,prsc:2;n:type:ShaderForge.SFN_Lerp,id:6601,x:31553,y:33705,varname:node_6601,prsc:2|A-2833-OUT,B-3150-OUT,T-8475-OUT;n:type:ShaderForge.SFN_NormalVector,id:6594,x:32297,y:33369,prsc:2,pt:True;n:type:ShaderForge.SFN_RemapRange,id:679,x:32680,y:33369,varname:node_679,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-915-XYZ;n:type:ShaderForge.SFN_Lerp,id:3481,x:32885,y:32756,varname:node_3481,prsc:2|A-3538-OUT,B-679-OUT,T-2825-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:2825,x:32680,y:33573,ptovrint:False,ptlb:UseNormals,ptin:_UseNormals,varname:_UseNormals,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Transform,id:915,x:32497,y:33369,varname:node_915,prsc:2,tffrom:0,tfto:3|IN-6594-OUT;proporder:4034-2310-8731-9898-4223-9160-1419-1555-1481-882-6249-7426-2831-8475-8806-2825;pass:END;sub:END;*/

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
        [MaterialToggle] _MatcapMode ("MatcapMode", Float ) = 0
        [MaterialToggle] _UseMatcapUV ("UseMatcapUV", Float ) = 0
        [MaterialToggle] _UseNormals ("UseNormals", Float ) = 0
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
            #include "Matcap.cginc"
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
            uniform fixed _MatcapMode;
            uniform fixed _UseMatcapUV;
            float3 ViewSpacePosition( float3 posWorld ){
            return mul(UNITY_MATRIX_V, float4(posWorld.xyz - _WorldSpaceCameraPos.xyz, 1));
            }
            
            float2 _GetMatcapUV( float3 normal , float3 view ){
            return GetMatcapUV(normal, view);
            }
            
            uniform fixed _UseNormals;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
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
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 viewNormal = mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb;
                float3 reflectedViewPosition = reflect(ViewSpacePosition( i.posWorld.rgb ),viewNormal); // This is the matcap mode used by Better Matcap. It is in fact worse.
                float2 matcapUV = saturate(lerp(_GetMatcapUV( normalDirection , viewDirection ),((reflectedViewPosition.rg/length((reflectedViewPosition+float3(0,0,1))))*0.5+0.5),_MatcapMode));
                float4 _Matcap_var = tex2D(_Matcap,TRANSFORM_TEX(matcapUV, _Matcap));
                float4 _LineMask_var = tex2D(_LineMask,TRANSFORM_TEX(i.uv0, _LineMask));
                float4 _AlphaMask_var = tex2D(_AlphaMask,TRANSFORM_TEX(i.uv0, _AlphaMask));
                float3 emissive = lerp(lerp(lerp(lerp(lerp(lerp(lerp(lerp(_MainTex_var.rgb,_DetailMask_var.rgb,_UseDetailMask),_ColorMask_var.rgb,_UseColorMask),_NormalMap_var.rgb,_UseNormalMap),float3(matcapUV,0.0),_UseMatcapUV),_Matcap_var.rgb,_UseMatcap),_LineMask_var.rgb,_UseLineMask),_AlphaMask_var.rgb,_UseAlphaMask),(mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb*0.5+0.5),_UseNormals);
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
            #include "Matcap.cginc"
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
                o.pos = UnityObjectToClipPos( v.vertex );
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
