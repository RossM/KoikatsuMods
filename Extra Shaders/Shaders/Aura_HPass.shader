// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:QQB1AHIAYQA=,psnm:HPass,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:1,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:False,stva:48,stmr:240,stmw:240,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:7406,x:33109,y:32711,varname:node_7406,prsc:2|emission-5114-OUT,alpha-4496-OUT,voffset-4276-XYZ;n:type:ShaderForge.SFN_Multiply,id:5291,x:32226,y:33308,varname:node_5291,prsc:2|A-6904-XYZ,B-3080-OUT,C-2579-OUT,D-208-OUT;n:type:ShaderForge.SFN_NormalVector,id:6910,x:31743,y:33308,prsc:2,pt:False;n:type:ShaderForge.SFN_Code,id:4496,x:32508,y:32793,varname:node_4496,prsc:2,code:cgBlAHQAdQByAG4AIABIAFAAYQBzAHMAKAB1AHYALAAgADIAIAAqACAAcgBhAGQAaQB1AHMAKQA7AA==,output:0,fname:GetAlpha,width:247,height:168,input:1,input:0,input_1_label:uv,input_2_label:radius|A-9209-UVOUT,B-4905-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9209,x:32194,y:32629,varname:node_9209,prsc:2,sctp:2;n:type:ShaderForge.SFN_RemapRange,id:805,x:31945,y:32813,varname:node_805,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-3247-OUT;n:type:ShaderForge.SFN_Get,id:3247,x:31726,y:32813,varname:node_3247,prsc:2|IN-6049-OUT;n:type:ShaderForge.SFN_RemapRange,id:3080,x:31979,y:33472,varname:node_3080,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.25|IN-5052-OUT;n:type:ShaderForge.SFN_Get,id:5052,x:31722,y:33472,varname:node_5052,prsc:2|IN-6049-OUT;n:type:ShaderForge.SFN_Multiply,id:4905,x:32194,y:32813,varname:node_4905,prsc:2|A-805-OUT,B-9655-OUT;n:type:ShaderForge.SFN_Code,id:9634,x:31160,y:33000,varname:node_9634,prsc:2,code:cgBlAHQAdQByAG4AIAAtAFUAbgBpAHQAeQBPAGIAagBlAGMAdABUAG8AVgBpAGUAdwBQAG8AcwAoAGYAbABvAGEAdAAzACgAMAAsADAALAAwACkAKQAuAHoAIAAtACAAXwBQAHIAbwBqAGUAYwB0AGkAbwBuAFAAYQByAGEAbQBzAC4AZwA7AA==,output:0,fname:GetCenterZ,width:247,height:132;n:type:ShaderForge.SFN_Set,id:7425,x:31480,y:33003,varname:centerZ,prsc:2|IN-9634-OUT;n:type:ShaderForge.SFN_Get,id:6106,x:31726,y:33003,varname:node_6106,prsc:2|IN-7425-OUT;n:type:ShaderForge.SFN_Reciprocal,id:9655,x:31945,y:33003,varname:node_9655,prsc:2|IN-6106-OUT;n:type:ShaderForge.SFN_Transform,id:6904,x:31979,y:33308,varname:node_6904,prsc:2,tffrom:1,tfto:3|IN-6910-OUT;n:type:ShaderForge.SFN_Vector3,id:2579,x:31979,y:33646,varname:node_2579,prsc:2,v1:1,v2:1,v3:0.01;n:type:ShaderForge.SFN_Transform,id:4276,x:32414,y:33308,varname:node_4276,prsc:2,tffrom:3,tfto:1|IN-5291-OUT;n:type:ShaderForge.SFN_Vector3,id:5114,x:32653,y:32560,varname:node_5114,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:2919,x:31208,y:32494,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:_Radius,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Set,id:6049,x:31396,y:32494,varname:r,prsc:2|IN-2919-OUT;n:type:ShaderForge.SFN_Slider,id:208,x:31822,y:33809,ptovrint:False,ptlb:GeometryExtend,ptin:_GeometryExtend,varname:_GeometryExtend,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;proporder:2919-208;pass:END;sub:END;*/

Shader "Custom/Aura_HPass" {
    Properties {
        _Radius ("Radius", Float ) = 0.1
        _GeometryExtend ("GeometryExtend", Range(0, 2)) = 1
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
            Name "HPass"
            ZTest Always
            ZWrite Off
            ColorMask A
            
            Stencil {
                Ref 48
                ReadMask 240
                WriteMask 240
                Comp NotEqual
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Aura.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            float GetAlpha( float2 uv , float radius ){
            return HPass(uv, 2 * radius);
            }
            
            float GetCenterZ(){
            return -UnityObjectToViewPos(float3(0,0,0)).z - _ProjectionParams.g;
            }
            
            uniform float _Radius;
            uniform float _GeometryExtend;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float3 normalDir : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float r = _Radius;
                v.vertex.xyz += mul( float4((UnityObjectToViewPos( float4(v.normal,0) ).xyz.rgb*(r*0.25+0.0)*float3(1,1,0.01)*_GeometryExtend),0), UNITY_MATRIX_MV ).xyz.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float3 emissive = float3(1,1,1);
                float3 finalColor = emissive;
                float r = _Radius;
                float centerZ = GetCenterZ();
                return fixed4(finalColor,GetAlpha( sceneUVs.rg , ((r*0.1+0.0)*(1.0 / centerZ)) ));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
