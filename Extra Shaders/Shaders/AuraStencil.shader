// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:1,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:51,stmr:255,stmw:255,stcp:6,stps:2,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2018,x:33216,y:32905,varname:node_2018,prsc:2|alpha-4703-OUT,clip-5166-OUT,voffset-9063-OUT;n:type:ShaderForge.SFN_Vector1,id:4703,x:32360,y:32959,varname:node_4703,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:964,x:32141,y:33082,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:5166,x:32360,y:33082,varname:node_5166,prsc:2|A-6826-OUT,B-964-A;n:type:ShaderForge.SFN_Vector1,id:6826,x:32141,y:33307,varname:node_6826,prsc:2,v1:0.01;n:type:ShaderForge.SFN_FragmentPosition,id:5990,x:31754,y:33727,varname:node_5990,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:4686,x:31754,y:33562,varname:node_4686,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8102,x:31950,y:33562,varname:node_8102,prsc:2|A-4686-XYZ,B-5990-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:8017,x:32141,y:34010,ptovrint:False,ptlb:_linewidthG,ptin:_linewidthG,varname:_node_8017,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:1165,x:32141,y:33770,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Length,id:6606,x:32141,y:33562,varname:node_6606,prsc:2|IN-8102-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9825,x:32141,y:34132,ptovrint:False,ptlb:LineWidthS,ptin:_LineWidthS,varname:_LineWidthS,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Code,id:9580,x:32435,y:33395,varname:node_9580,prsc:2,code:IwBpAG4AYwBsAHUAZABlACAAIgBMAGkAbgBlAFcAaQBkAHQAaAAuAGMAZwBpAG4AYwAiAA==,output:0,fname:GetLineWidth,width:247,height:148,input:0,input:0,input:0,input:0,input_1_label:cameraDist,input_2_label:detailMaskB,input_3_label:linewidthG,input_4_label:linewidthS|A-6606-OUT,B-1165-B,C-8017-OUT,D-9825-OUT;n:type:ShaderForge.SFN_Multiply,id:9063,x:32775,y:33371,varname:node_9063,prsc:2|A-9580-OUT,B-5011-OUT,C-313-XYZ;n:type:ShaderForge.SFN_NormalVector,id:5011,x:32583,y:33576,prsc:2,pt:False;n:type:ShaderForge.SFN_ObjectScale,id:313,x:32583,y:33743,varname:node_313,prsc:2,rcp:True;n:type:ShaderForge.SFN_Code,id:7329,x:32431,y:33930,varname:node_7329,prsc:2,code:ZgBsAG8AYQB0ADQAeAA0ACAAdABtAGEAdAAgAD0AIAB0AHIAYQBuAHMAcABvAHMAZQAoAHUAbgBpAHQAeQBfAFcAbwByAGwAZABUAG8ATwBiAGoAZQBjAHQAKQA7AAoAcgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoAGwAZQBuAGcAdABoACgAdABtAGEAdABbADAAXQAuAHgAeQB6ACkALAAgAGwAZQBuAGcAdABoACgAdABtAGEAdABbADEAXQAuAHgAeQB6ACkALAAgAGwAZQBuAGcAdABoACgAdABtAGEAdABbADIAXQAuAHgAeQB6ACkAKQA7AA==,output:2,fname:GetScaleFactors,width:251,height:132;proporder:964-1165-9825;pass:END;sub:END;*/

Shader "Custom/AuraStencil" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _DetailMask ("DetailMask", 2D) = "white" {}
        _LineWidthS ("LineWidthS", Float ) = 1
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
            Name "Stencil"
            
            ColorMask A
            
            Stencil {
                Ref 51
                Pass Replace
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _linewidthG;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _LineWidthS;
            float GetLineWidth( float cameraDist , float detailMaskB , float linewidthG , float linewidthS ){
            #include "LineWidth.cginc"
            }
            
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
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float4 _DetailMask_var = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(o.uv0, _DetailMask),0.0,0));
                v.vertex.xyz += (GetLineWidth( length((_WorldSpaceCameraPos-mul(unity_ObjectToWorld, v.vertex).rgb)) , _DetailMask_var.b , _linewidthG , _LineWidthS )*v.normal*recipObjScale);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(step(0.01,_MainTex_var.a) - 0.5);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor,0.0);
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
            ColorMask A
            
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _linewidthG;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _LineWidthS;
            float GetLineWidth( float cameraDist , float detailMaskB , float linewidthG , float linewidthS ){
            #include "LineWidth.cginc"
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float4 _DetailMask_var = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(o.uv0, _DetailMask),0.0,0));
                v.vertex.xyz += (GetLineWidth( length((_WorldSpaceCameraPos-mul(unity_ObjectToWorld, v.vertex).rgb)) , _DetailMask_var.b , _linewidthG , _LineWidthS )*v.normal*recipObjScale);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(step(0.01,_MainTex_var.a) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
