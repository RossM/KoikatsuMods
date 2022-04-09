// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,psnm:ResetAlpha,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:1,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:51,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:7406,x:33109,y:32711,varname:node_7406,prsc:2|emission-238-OUT,voffset-5291-OUT;n:type:ShaderForge.SFN_Multiply,id:5291,x:32544,y:33163,varname:node_5291,prsc:2|A-6910-OUT,B-3080-OUT;n:type:ShaderForge.SFN_NormalVector,id:6910,x:32325,y:33163,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:4957,x:32125,y:33318,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:3080,x:32325,y:33318,varname:node_3080,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.5|IN-4957-OUT;n:type:ShaderForge.SFN_Vector4,id:238,x:32710,y:32812,varname:node_238,prsc:2,v1:0,v2:0,v3:0,v4:1;proporder:4957;pass:END;sub:END;*/

Shader "Custom/AuraResetAlpha" {
    Properties {
        _Radius ("Radius", Float ) = 0.1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "ResetAlpha"
            Cull Front
            ZTest Always
            ZWrite Off
            ColorMask A
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Radius;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float3 normalDir : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                v.vertex.xyz += (v.normal*(_Radius*0.5+0.0));
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = float4(0,0,0,1).rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
