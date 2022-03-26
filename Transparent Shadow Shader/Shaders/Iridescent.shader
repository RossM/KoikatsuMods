// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:Shader Forge/main_hair,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:2,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:2,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2030,x:33492,y:33294,varname:node_2030,prsc:2|normal-1583-RGB,custl-7836-OUT,alpha-4567-OUT,clip-8530-OUT,olwid-8107-OUT,olcol-6929-RGB;n:type:ShaderForge.SFN_Tex2d,id:3845,x:32877,y:32814,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6360-UVOUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:124,x:31332,y:32177,varname:node_124,prsc:2;n:type:ShaderForge.SFN_Transform,id:8182,x:31541,y:32177,varname:viewSpaceReflection,prsc:2,tffrom:0,tfto:3|IN-124-OUT;n:type:ShaderForge.SFN_Add,id:8326,x:31752,y:32249,varname:node_8326,prsc:2|A-8182-XYZ,B-4082-OUT;n:type:ShaderForge.SFN_Vector3,id:4082,x:31541,y:32404,varname:node_4082,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Length,id:5783,x:31938,y:32249,varname:node_5783,prsc:2|IN-8326-OUT;n:type:ShaderForge.SFN_Divide,id:4765,x:32138,y:32249,varname:node_4765,prsc:2|A-511-OUT,B-5783-OUT;n:type:ShaderForge.SFN_ComponentMask,id:511,x:31938,y:32099,varname:node_511,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8182-XYZ;n:type:ShaderForge.SFN_Set,id:2653,x:32306,y:32249,varname:matcapUV,prsc:2|IN-4765-OUT;n:type:ShaderForge.SFN_Set,id:3417,x:33273,y:32793,varname:textureRGB,prsc:2|IN-677-OUT;n:type:ShaderForge.SFN_Set,id:764,x:33063,y:32940,varname:textureA,prsc:2|IN-3845-A;n:type:ShaderForge.SFN_Tex2d,id:1583,x:32484,y:33125,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-940-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:4886,x:30572,y:33917,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:3950,x:30743,y:33917,varname:node_3950,prsc:2,dt:1|A-4886-OUT,B-6006-OUT;n:type:ShaderForge.SFN_TexCoord,id:940,x:32282,y:33125,varname:node_940,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_LightVector,id:6006,x:30572,y:34068,varname:node_6006,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4093,x:32522,y:33576,varname:node_4093,prsc:2|A-122-OUT,B-8445-OUT,T-6526-OUT;n:type:ShaderForge.SFN_Tex2d,id:5977,x:32480,y:32507,ptovrint:False,ptlb:HairGloss,ptin:_HairGloss,varname:_HairGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8724-OUT;n:type:ShaderForge.SFN_TexCoord,id:9017,x:32034,y:32475,varname:node_9017,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Color,id:4573,x:30013,y:32697,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:3106,x:31953,y:34131,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.8,c3:0.8,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5007,x:30013,y:32457,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:_ColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8424-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8424,x:29777,y:32457,varname:node_8424,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:2969,x:30013,y:32938,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6061,x:30013,y:33175,ptovrint:False,ptlb:Color3,ptin:_Color3,varname:_Color3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:2262,x:30337,y:32633,varname:baseColor,prsc:2,chbt:1|M-5007-RGB,R-4573-RGB,G-2969-RGB,B-6061-RGB,BTM-4212-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5352,x:31638,y:32899,ptovrint:False,ptlb:SpeclarHeight,ptin:_SpeclarHeight,varname:_SpeclarHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.95;n:type:ShaderForge.SFN_Lerp,id:4276,x:31869,y:32746,varname:node_4276,prsc:2|A-4710-OUT,B-6987-OUT,T-5352-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4710,x:31638,y:32601,varname:node_4710,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4808-XYZ;n:type:ShaderForge.SFN_Append,id:5885,x:32034,y:32642,varname:node_5885,prsc:2|A-1908-OUT,B-4276-OUT;n:type:ShaderForge.SFN_Color,id:6929,x:33198,y:33887,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:_LineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7056,x:32850,y:33713,ptovrint:True,ptlb:linewidthG,ptin:_linewidthG,varname:_linewidthG,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:6774,x:30782,y:31862,varname:node_6774,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5789,x:30972,y:31862,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-6774-UVOUT;n:type:ShaderForge.SFN_Set,id:8630,x:31186,y:31992,varname:detailMaskB,prsc:2|IN-5789-B;n:type:ShaderForge.SFN_Multiply,id:677,x:33074,y:32793,varname:node_677,prsc:2|A-5589-OUT,B-3845-RGB;n:type:ShaderForge.SFN_Set,id:874,x:32707,y:32507,varname:glossRGB,prsc:2|IN-5977-RGB;n:type:ShaderForge.SFN_Add,id:7836,x:32904,y:33388,varname:node_7836,prsc:2|A-9699-OUT,B-8900-OUT;n:type:ShaderForge.SFN_Get,id:8900,x:32700,y:33524,varname:node_8900,prsc:2|IN-874-OUT;n:type:ShaderForge.SFN_Add,id:8724,x:32212,y:32475,varname:hairGlossUV,prsc:2|A-9017-UVOUT,B-5885-OUT;n:type:ShaderForge.SFN_Vector1,id:1908,x:31869,y:32642,varname:node_1908,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6987,x:31638,y:32801,varname:node_6987,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:8944,x:31288,y:32601,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:4808,x:31461,y:32601,varname:node_4808,prsc:2,tffrom:0,tfto:3|IN-8944-OUT;n:type:ShaderForge.SFN_Multiply,id:9699,x:32700,y:33388,varname:node_9699,prsc:2|A-8979-OUT,B-334-RGB,C-4093-OUT;n:type:ShaderForge.SFN_Get,id:8979,x:32463,y:33351,varname:node_8979,prsc:2|IN-3417-OUT;n:type:ShaderForge.SFN_Get,id:5605,x:32666,y:32631,varname:node_5605,prsc:2|IN-324-OUT;n:type:ShaderForge.SFN_ComponentMask,id:543,x:30877,y:32636,varname:node_543,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8127-OUT;n:type:ShaderForge.SFN_Set,id:324,x:31047,y:32636,varname:colorRGB,prsc:2|IN-543-OUT;n:type:ShaderForge.SFN_Set,id:3312,x:31186,y:31881,varname:detailMaskG,prsc:2|IN-5789-G;n:type:ShaderForge.SFN_Vector1,id:4903,x:30743,y:34135,varname:node_4903,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:104,x:30923,y:33917,varname:rampUV,prsc:2|A-3950-OUT,B-4903-OUT;n:type:ShaderForge.SFN_Color,id:9286,x:32122,y:34437,ptovrint:False,ptlb:ambientshadowG,ptin:_ambientshadowG,varname:_ambientshadowG,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ViewPosition,id:9521,x:32514,y:33854,varname:node_9521,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:6909,x:32514,y:33994,varname:node_6909,prsc:2;n:type:ShaderForge.SFN_Distance,id:1377,x:32679,y:33854,varname:node_1377,prsc:2|A-9521-XYZ,B-6909-XYZ;n:type:ShaderForge.SFN_RemapRange,id:4160,x:32850,y:33854,varname:node_4160,prsc:2,frmn:0,frmx:1,tomn:0.0005,tomx:0.002|IN-1377-OUT;n:type:ShaderForge.SFN_Multiply,id:8720,x:33016,y:33713,varname:node_8720,prsc:2|A-7056-OUT,B-4160-OUT,C-9055-OUT;n:type:ShaderForge.SFN_Clamp01,id:8107,x:33198,y:33713,varname:node_8107,prsc:2|IN-8720-OUT;n:type:ShaderForge.SFN_LightColor,id:334,x:32463,y:33422,varname:node_334,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:2214,x:31098,y:34142,ptovrint:False,ptlb:_RampG,ptin:_RampG,varname:_node_2214,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8054,x:31370,y:33914,varname:_RampG_var,prsc:2,ntxv:0,isnm:False|UVIN-104-OUT,TEX-2214-TEX;n:type:ShaderForge.SFN_Tangent,id:9243,x:30719,y:33333,varname:node_9243,prsc:2;n:type:ShaderForge.SFN_Dot,id:4931,x:30902,y:33210,varname:node_4931,prsc:2,dt:0|A-8439-OUT,B-9243-OUT;n:type:ShaderForge.SFN_Bitangent,id:2883,x:30723,y:33604,varname:node_2883,prsc:2;n:type:ShaderForge.SFN_Dot,id:4814,x:30905,y:33470,varname:node_4814,prsc:2,dt:0|A-2294-OUT,B-2883-OUT;n:type:ShaderForge.SFN_Append,id:2277,x:31102,y:33212,varname:iridescenceUV,prsc:2|A-4931-OUT,B-4814-OUT;n:type:ShaderForge.SFN_TexCoord,id:6360,x:32687,y:32895,varname:node_6360,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6456,x:31288,y:33212,ptovrint:False,ptlb:IridescenceTex,ptin:_IridescenceTex,varname:_IridescenceTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2277-OUT;n:type:ShaderForge.SFN_Set,id:6263,x:31493,y:33212,varname:iridescenceRGB,prsc:2|IN-6456-RGB;n:type:ShaderForge.SFN_Lerp,id:5589,x:32877,y:32631,varname:node_5589,prsc:2|A-5605-OUT,B-6003-OUT,T-1381-OUT;n:type:ShaderForge.SFN_Get,id:6003,x:32666,y:32688,varname:node_6003,prsc:2|IN-6263-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8028,x:33115,y:32240,ptovrint:False,ptlb:IridescenceAlpha,ptin:_IridescenceAlpha,varname:_IridescenceAlpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_ValueProperty,id:9055,x:32850,y:34067,ptovrint:False,ptlb:LineWidthS,ptin:_LineWidthS,varname:_LineWidthS,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Get,id:4567,x:33251,y:33554,varname:node_4567,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_Get,id:8530,x:33251,y:33613,varname:node_8530,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2313,x:31370,y:34097,varname:node_2313,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1745,x:31609,y:33914,varname:node_1745,prsc:2|A-8054-R,B-2313-OUT;n:type:ShaderForge.SFN_Set,id:4255,x:31799,y:33914,varname:brightness,prsc:2|IN-1745-OUT;n:type:ShaderForge.SFN_Multiply,id:3698,x:33507,y:32125,varname:node_3698,prsc:2|A-9854-OUT,B-9317-OUT,C-8028-OUT;n:type:ShaderForge.SFN_Get,id:9317,x:33094,y:32162,varname:node_9317,prsc:2|IN-4255-OUT;n:type:ShaderForge.SFN_Set,id:6228,x:32481,y:34221,varname:shadowColorRGB,prsc:2|IN-1887-OUT;n:type:ShaderForge.SFN_Get,id:122,x:32310,y:33576,varname:node_122,prsc:2|IN-6228-OUT;n:type:ShaderForge.SFN_Get,id:2742,x:30318,y:32953,varname:node_2742,prsc:2|IN-6228-OUT;n:type:ShaderForge.SFN_Get,id:763,x:30318,y:33016,varname:node_763,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_Lerp,id:5172,x:30515,y:32830,varname:node_5172,prsc:2|A-4469-OUT,B-2742-OUT,T-763-OUT;n:type:ShaderForge.SFN_Multiply,id:8127,x:30702,y:32636,varname:node_8127,prsc:2|A-2262-OUT,B-5172-OUT;n:type:ShaderForge.SFN_Lerp,id:1887,x:32321,y:34221,varname:node_1887,prsc:2|A-2342-OUT,B-8640-OUT,T-9286-A;n:type:ShaderForge.SFN_Vector3,id:8640,x:32122,y:34294,varname:node_8640,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Get,id:6526,x:32310,y:33760,varname:node_6526,prsc:2|IN-4255-OUT;n:type:ShaderForge.SFN_RemapRange,id:2342,x:32122,y:34131,varname:node_2342,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3106-RGB;n:type:ShaderForge.SFN_Vector3,id:8445,x:32331,y:33637,varname:node_8445,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:4469,x:30339,y:32830,varname:node_4469,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:4212,x:30013,y:33386,varname:node_4212,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Dot,id:9987,x:32700,y:31986,varname:node_9987,prsc:2,dt:0|A-1584-OUT,B-8647-OUT;n:type:ShaderForge.SFN_Set,id:6574,x:33681,y:32125,varname:iridescenceFactor,prsc:2|IN-3698-OUT;n:type:ShaderForge.SFN_Get,id:1381,x:32666,y:32754,varname:node_1381,prsc:2|IN-6574-OUT;n:type:ShaderForge.SFN_Power,id:9854,x:33115,y:31986,varname:node_9854,prsc:2|VAL-4852-OUT,EXP-7902-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6093,x:32707,y:32178,ptovrint:False,ptlb:IridescencePower,ptin:_IridescencePower,varname:_IridescencePower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:7902,x:32900,y:32196,varname:node_7902,prsc:2|A-6093-OUT,B-5431-OUT;n:type:ShaderForge.SFN_Vector1,id:5431,x:32707,y:32311,varname:node_5431,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:4852,x:32900,y:31986,varname:node_4852,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9987-OUT;n:type:ShaderForge.SFN_HalfVector,id:2294,x:30723,y:33470,varname:node_2294,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:8439,x:30719,y:33210,varname:node_8439,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1584,x:32498,y:31986,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:8647,x:32498,y:32144,varname:node_8647,prsc:2;proporder:3845-1583-5977-4573-3106-5007-2969-6061-5352-6929-5789-6456-8028-9055-6093;pass:END;sub:END;*/

Shader "Custom/Iridescent" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _HairGloss ("HairGloss", 2D) = "black" {}
        _Color ("Color", Color) = (1,1,1,1)
        _ShadowColor ("ShadowColor", Color) = (0.8,0.8,0.8,1)
        _ColorMask ("ColorMask", 2D) = "black" {}
        _Color2 ("Color2", Color) = (1,1,1,1)
        _Color3 ("Color3", Color) = (1,1,1,1)
        _SpeclarHeight ("SpeclarHeight", Float ) = 0.95
        _LineColor ("LineColor", Color) = (0.5,0.5,0.5,1)
        _DetailMask ("DetailMask", 2D) = "black" {}
        _IridescenceTex ("IridescenceTex", 2D) = "white" {}
        _IridescenceAlpha ("IridescenceAlpha", Float ) = 0.4
        _LineWidthS ("LineWidthS", Float ) = 1
        _IridescencePower ("IridescencePower", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _LineColor;
            uniform float _linewidthG;
            uniform float _LineWidthS;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*saturate((_linewidthG*(distance(_WorldSpaceCameraPos,objPos.rgb)*0.0015+0.0005)*_LineWidthS)),1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(textureA - 0.5);
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
            
            
            Stencil {
                Ref 2
                Comp NotEqual
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _HairGloss; uniform float4 _HairGloss_ST;
            uniform float4 _Color;
            uniform float4 _ShadowColor;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float _SpeclarHeight;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float4 _ambientshadowG;
            uniform sampler2D _RampG; uniform float4 _RampG_ST;
            uniform sampler2D _IridescenceTex; uniform float4 _IridescenceTex_ST;
            uniform float _IridescenceAlpha;
            uniform float _IridescencePower;
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(textureA - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 shadowColorRGB = lerp((_ShadowColor.rgb*2.0+-1.0),float3(1,1,1),_ambientshadowG.a);
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float detailMaskG = _DetailMask_var.g;
                float3 colorRGB = ((lerp( lerp( lerp( float3(1,1,1), _Color.rgb, _ColorMask_var.rgb.r ), _Color2.rgb, _ColorMask_var.rgb.g ), _Color3.rgb, _ColorMask_var.rgb.b ))*lerp(float3(1,1,1),shadowColorRGB,detailMaskG)).rgb;
                float2 iridescenceUV = float2(dot(halfDirection,i.tangentDir),dot(halfDirection,i.bitangentDir));
                float4 _IridescenceTex_var = tex2D(_IridescenceTex,TRANSFORM_TEX(iridescenceUV, _IridescenceTex));
                float3 iridescenceRGB = _IridescenceTex_var.rgb;
                float2 rampUV = float2(max(0,dot(normalDirection,lightDirection)),0.0);
                float4 _RampG_var = tex2D(_RampG,TRANSFORM_TEX(rampUV, _RampG));
                float brightness = (_RampG_var.r*attenuation);
                float iridescenceFactor = (pow((dot(normalDirection,halfDirection)*0.5+0.5),(_IridescencePower+1.0))*brightness*_IridescenceAlpha);
                float3 textureRGB = (lerp(colorRGB,iridescenceRGB,iridescenceFactor)*_MainTex_var.rgb);
                float2 hairGlossUV = (i.uv1+float2(0.0,lerp(mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.g,0.0,_SpeclarHeight)));
                float4 _HairGloss_var = tex2D(_HairGloss,TRANSFORM_TEX(hairGlossUV, _HairGloss));
                float3 glossRGB = _HairGloss_var.rgb;
                float3 finalColor = ((textureRGB*_LightColor0.rgb*lerp(shadowColorRGB,float3(1,1,1),brightness))+glossRGB);
                fixed4 finalRGBA = fixed4(finalColor,textureA);
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(textureA - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Shader Forge/main_hair"
    CustomEditor "ShaderForgeMaterialInspector"
}
