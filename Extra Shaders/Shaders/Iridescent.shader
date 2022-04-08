// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Shader Forge/main_hair,iptp:0,cusa:False,bamd:0,cgin:VQB0AGkAbABpAHQAaQBlAHMAfABNAGEAaQBuAEwAaQBnAGgAdABpAG4AZwB8AEwAaQBuAGUAVwBpAGQAdABoAA==,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:40,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:False,stva:2,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2030,x:33492,y:33294,varname:node_2030,prsc:2|normal-1583-RGB,emission-9900-OUT,alpha-4567-OUT,clip-8494-OUT,olwid-9369-OUT,olcol-3069-OUT;n:type:ShaderForge.SFN_Tex2d,id:3845,x:32686,y:32839,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:3417,x:33082,y:32818,varname:textureRGB,prsc:2|IN-677-OUT;n:type:ShaderForge.SFN_Set,id:764,x:33063,y:32940,varname:textureA,prsc:2|IN-3845-A;n:type:ShaderForge.SFN_Tex2d,id:1583,x:32484,y:33125,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:4886,x:29751,y:34017,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:3950,x:29922,y:34017,varname:node_3950,prsc:2,dt:1|A-4886-OUT,B-6006-OUT;n:type:ShaderForge.SFN_LightVector,id:6006,x:29751,y:34168,varname:node_6006,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4093,x:32461,y:33683,varname:node_4093,prsc:2|A-122-OUT,B-8445-OUT,T-7809-OUT;n:type:ShaderForge.SFN_Tex2d,id:5977,x:32475,y:32454,ptovrint:False,ptlb:HairGloss,ptin:_HairGloss,varname:_HairGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-8724-OUT;n:type:ShaderForge.SFN_TexCoord,id:9017,x:32034,y:32475,varname:node_9017,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Color,id:4573,x:30061,y:31930,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:3106,x:31528,y:34336,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.8,c3:0.8,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5007,x:30061,y:31690,ptovrint:False,ptlb:ColorMask,ptin:_ColorMask,varname:_ColorMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Color,id:2969,x:30061,y:32171,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6061,x:30061,y:32408,ptovrint:False,ptlb:Color3,ptin:_Color3,varname:_Color3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:2262,x:30385,y:31866,varname:baseColor,prsc:2,chbt:1|M-5007-RGB,R-4573-RGB,G-2969-RGB,B-6061-RGB,BTM-4212-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5352,x:31638,y:32899,ptovrint:False,ptlb:SpeclarHeight,ptin:_SpeclarHeight,varname:_SpeclarHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.95;n:type:ShaderForge.SFN_Lerp,id:4276,x:31869,y:32746,varname:node_4276,prsc:2|A-4710-OUT,B-6987-OUT,T-5352-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4710,x:31638,y:32601,varname:node_4710,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4808-XYZ;n:type:ShaderForge.SFN_Append,id:5885,x:32034,y:32642,varname:node_5885,prsc:2|A-1908-OUT,B-4276-OUT;n:type:ShaderForge.SFN_Color,id:6929,x:33083,y:34149,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:_LineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5789,x:30702,y:31430,ptovrint:False,ptlb:DetailMask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Set,id:8630,x:30926,y:31584,varname:detailMaskB,prsc:2|IN-5789-B;n:type:ShaderForge.SFN_Multiply,id:677,x:32883,y:32818,varname:node_677,prsc:2|A-2197-OUT,B-3845-RGB;n:type:ShaderForge.SFN_Set,id:874,x:32707,y:32507,varname:glossRGB,prsc:2|IN-5977-RGB;n:type:ShaderForge.SFN_Add,id:8724,x:32212,y:32475,varname:hairGlossUV,prsc:2|A-9017-UVOUT,B-5885-OUT;n:type:ShaderForge.SFN_Vector1,id:1908,x:31869,y:32642,varname:node_1908,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6987,x:31638,y:32801,varname:node_6987,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:8944,x:31288,y:32601,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:4808,x:31461,y:32601,varname:node_4808,prsc:2,tffrom:0,tfto:3|IN-8944-OUT;n:type:ShaderForge.SFN_ComponentMask,id:543,x:30602,y:31866,varname:node_543,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2262-OUT;n:type:ShaderForge.SFN_Set,id:324,x:30814,y:31866,varname:colorRGB,prsc:2|IN-543-OUT;n:type:ShaderForge.SFN_Set,id:3312,x:30926,y:31464,varname:detailMaskG,prsc:2|IN-5789-G;n:type:ShaderForge.SFN_Vector1,id:4903,x:29922,y:34235,varname:node_4903,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:104,x:30102,y:34017,varname:rampUV,prsc:2|A-3950-OUT,B-4903-OUT;n:type:ShaderForge.SFN_Color,id:9286,x:30953,y:34595,ptovrint:False,ptlb:ambientshadowG,ptin:_ambientshadowG,varname:_ambientshadowG,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ViewPosition,id:9521,x:32536,y:33842,varname:node_9521,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:6909,x:32536,y:33995,varname:node_6909,prsc:2;n:type:ShaderForge.SFN_Distance,id:1377,x:32734,y:33842,varname:node_1377,prsc:2|A-9521-XYZ,B-6909-XYZ;n:type:ShaderForge.SFN_LightColor,id:334,x:32461,y:33548,varname:node_334,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:2214,x:30277,y:34242,ptovrint:False,ptlb:_RampG,ptin:_RampG,varname:_node_2214,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8054,x:30549,y:34014,varname:_RampG_var,prsc:2,ntxv:0,isnm:False|UVIN-104-OUT,TEX-2214-TEX;n:type:ShaderForge.SFN_Tangent,id:9243,x:29460,y:32663,varname:node_9243,prsc:2;n:type:ShaderForge.SFN_Dot,id:4931,x:29659,y:32709,varname:node_4931,prsc:2,dt:0|A-9243-OUT,B-4067-OUT;n:type:ShaderForge.SFN_Bitangent,id:2883,x:29468,y:33052,varname:node_2883,prsc:2;n:type:ShaderForge.SFN_Dot,id:4814,x:29653,y:32977,varname:node_4814,prsc:2,dt:0|A-4067-OUT,B-2883-OUT;n:type:ShaderForge.SFN_Append,id:2277,x:29861,y:32948,varname:iridescenceUVprerot,prsc:2|A-4931-OUT,B-4814-OUT;n:type:ShaderForge.SFN_Tex2d,id:6456,x:31097,y:33237,varname:_IridescenceTex_var,prsc:2,tex:e2125582235a4034aa79ad7aa8b195c4,ntxv:0,isnm:False|UVIN-6340-OUT,TEX-5223-TEX;n:type:ShaderForge.SFN_Set,id:6263,x:31542,y:33232,varname:iridescenceRGB,prsc:2|IN-7126-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9055,x:32734,y:34091,ptovrint:False,ptlb:LineWidthS,ptin:_LineWidthS,varname:_LineWidthS,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Get,id:4567,x:33251,y:33554,varname:node_4567,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_Get,id:8530,x:33052,y:33704,varname:node_8530,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2313,x:30549,y:34197,varname:node_2313,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1745,x:30788,y:34014,varname:lightValue,prsc:2|A-8054-R,B-2313-OUT;n:type:ShaderForge.SFN_Multiply,id:3698,x:33317,y:32166,varname:node_3698,prsc:2|A-9854-OUT,B-9317-OUT,C-3668-OUT,D-9542-RGB;n:type:ShaderForge.SFN_Get,id:9317,x:32907,y:32113,varname:node_9317,prsc:2|IN-5379-OUT;n:type:ShaderForge.SFN_Set,id:6228,x:32055,y:34329,varname:shadowRGB,prsc:2|IN-1887-OUT;n:type:ShaderForge.SFN_Get,id:122,x:32242,y:33571,varname:node_122,prsc:2|IN-6228-OUT;n:type:ShaderForge.SFN_Lerp,id:1887,x:31895,y:34329,varname:node_1887,prsc:2|A-8640-OUT,B-3106-RGB,T-434-OUT;n:type:ShaderForge.SFN_Vector3,id:8640,x:31696,y:34179,varname:node_8640,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:8445,x:32263,y:33664,varname:node_8445,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:4212,x:30061,y:32619,varname:node_4212,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Set,id:6574,x:33495,y:32166,varname:iridescenceFactor,prsc:2|IN-3698-OUT;n:type:ShaderForge.SFN_Power,id:9854,x:32928,y:31937,varname:node_9854,prsc:2|VAL-4053-OUT,EXP-8257-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6093,x:32520,y:32129,ptovrint:False,ptlb:IridescencePower,ptin:_IridescencePower,varname:_IridescencePower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_NormalVector,id:1584,x:32311,y:31937,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:8647,x:32311,y:32095,varname:node_8647,prsc:2;n:type:ShaderForge.SFN_Dot,id:4053,x:32515,y:31937,varname:node_4053,prsc:2,dt:4|A-1584-OUT,B-8647-OUT;n:type:ShaderForge.SFN_NormalVector,id:3513,x:34139,y:31149,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:1570,x:34139,y:31313,varname:node_1570,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4748,x:34117,y:31599,ptovrint:False,ptlb:rimpower,ptin:_rimpower,varname:_rimpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1697,x:33706,y:31826,ptovrint:False,ptlb:rimV,ptin:_rimV,varname:_rimV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Set,id:4629,x:34839,y:31573,varname:rimRGB,prsc:2|IN-9312-OUT;n:type:ShaderForge.SFN_Get,id:6364,x:32671,y:33601,varname:node_6364,prsc:2|IN-4629-OUT;n:type:ShaderForge.SFN_Multiply,id:2972,x:32692,y:33376,varname:node_2972,prsc:2|A-4706-OUT,B-334-RGB,C-4093-OUT;n:type:ShaderForge.SFN_Add,id:9900,x:32887,y:33376,varname:node_9900,prsc:2|A-2972-OUT,B-7503-OUT,C-6364-OUT,D-5645-OUT;n:type:ShaderForge.SFN_Get,id:7503,x:32671,y:33529,varname:node_7503,prsc:2|IN-874-OUT;n:type:ShaderForge.SFN_Get,id:4706,x:32440,y:33376,varname:node_4706,prsc:2|IN-3417-OUT;n:type:ShaderForge.SFN_Set,id:3135,x:31316,y:34676,varname:shadowStrength,prsc:2|IN-8699-OUT;n:type:ShaderForge.SFN_Get,id:8758,x:31507,y:34555,varname:node_8758,prsc:2|IN-3135-OUT;n:type:ShaderForge.SFN_Color,id:320,x:33800,y:31436,ptovrint:False,ptlb:rimColor,ptin:_rimColor,varname:_rimColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6,c2:0.714,c3:0.729,c4:1;n:type:ShaderForge.SFN_OneMinus,id:6668,x:33706,y:31663,varname:node_6668,prsc:2|IN-6657-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5223,x:30906,y:33521,ptovrint:False,ptlb:IridescenceTex,ptin:_IridescenceTex,varname:_IridescenceTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e2125582235a4034aa79ad7aa8b195c4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:8257,x:32703,y:32113,varname:node_8257,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-6093-OUT;n:type:ShaderForge.SFN_Get,id:2197,x:32665,y:32753,varname:node_2197,prsc:2|IN-324-OUT;n:type:ShaderForge.SFN_Multiply,id:7126,x:31330,y:33232,varname:node_7126,prsc:2|A-6456-RGB,B-100-OUT;n:type:ShaderForge.SFN_Get,id:100,x:31076,y:33438,varname:node_100,prsc:2|IN-6574-OUT;n:type:ShaderForge.SFN_Get,id:5645,x:32671,y:33683,varname:node_5645,prsc:2|IN-6263-OUT;n:type:ShaderForge.SFN_OneMinus,id:8699,x:31141,y:34676,varname:node_8699,prsc:2|IN-9286-A;n:type:ShaderForge.SFN_Multiply,id:434,x:31719,y:34555,varname:node_434,prsc:2|A-3106-A,B-8758-OUT,C-2243-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2243,x:31528,y:34640,ptovrint:False,ptlb:shadowV,ptin:_shadowV,varname:_shadowV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Get,id:182,x:31854,y:33629,varname:node_182,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_OneMinus,id:3376,x:32070,y:33629,varname:node_3376,prsc:2|IN-182-OUT;n:type:ShaderForge.SFN_Min,id:7809,x:32263,y:33790,varname:node_7809,prsc:2|A-3376-OUT,B-5554-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9144,x:30738,y:33786,ptovrint:False,ptlb:ShadowExtend,ptin:_ShadowExtend,varname:_ShadowExtend,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:5554,x:32072,y:33941,varname:node_5554,prsc:2|A-6770-OUT,B-6068-OUT,T-8938-OUT;n:type:ShaderForge.SFN_Vector1,id:6068,x:31875,y:33941,varname:node_6068,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:6770,x:31875,y:33772,varname:node_6770,prsc:2,frmn:0,frmx:1,tomn:0,tomx:-0.5|IN-1914-OUT;n:type:ShaderForge.SFN_Get,id:8919,x:33062,y:34053,varname:node_8919,prsc:2|IN-324-OUT;n:type:ShaderForge.SFN_Blend,id:3069,x:33265,y:34053,varname:node_3069,prsc:2,blmd:10,clmp:True|SRC-8919-OUT,DST-6929-RGB;n:type:ShaderForge.SFN_Get,id:6657,x:33509,y:31663,varname:node_6657,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_Get,id:1319,x:34131,y:32133,varname:node_1319,prsc:2|IN-6228-OUT;n:type:ShaderForge.SFN_Set,id:5379,x:30980,y:34014,varname:lighting,prsc:2|IN-1745-OUT;n:type:ShaderForge.SFN_Get,id:8938,x:31854,y:34013,varname:node_8938,prsc:2|IN-5379-OUT;n:type:ShaderForge.SFN_Multiply,id:6838,x:34152,y:31847,varname:node_6838,prsc:2|A-8215-OUT,B-3370-OUT,C-1716-OUT;n:type:ShaderForge.SFN_Get,id:1914,x:31686,y:33772,varname:node_1914,prsc:2|IN-3730-OUT;n:type:ShaderForge.SFN_Set,id:3730,x:30919,y:33786,varname:shadowExtend,prsc:2|IN-9144-OUT;n:type:ShaderForge.SFN_Get,id:8215,x:33892,y:31847,varname:node_8215,prsc:2|IN-3730-OUT;n:type:ShaderForge.SFN_OneMinus,id:3370,x:33913,y:31915,varname:node_3370,prsc:2|IN-2340-OUT;n:type:ShaderForge.SFN_Get,id:2340,x:33706,y:31951,varname:node_2340,prsc:2|IN-5379-OUT;n:type:ShaderForge.SFN_Multiply,id:1390,x:34002,y:31436,varname:node_1390,prsc:2|A-320-RGB,B-320-A;n:type:ShaderForge.SFN_Get,id:1716,x:33892,y:32060,varname:node_1716,prsc:2|IN-3312-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3668,x:32928,y:32230,ptovrint:False,ptlb:IridescenceV,ptin:_IridescenceV,varname:_IridescenceV,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Rotator,id:3759,x:30144,y:32948,varname:textureRelativeCoordinates,prsc:2|UVIN-2277-OUT,PIV-9868-OUT,ANG-8170-OUT;n:type:ShaderForge.SFN_Tex2d,id:6210,x:29655,y:33203,ptovrint:False,ptlb:IridescenceRot,ptin:_IridescenceRot,varname:_IridescenceRot,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f91397b4aaa81c14fbfcbac9bfea6bd4,ntxv:1,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:8170,x:29863,y:33221,varname:node_8170,prsc:2,frmn:0,frmx:1,tomn:-3.141593,tomx:3.141593|IN-6210-G;n:type:ShaderForge.SFN_Tex2d,id:9542,x:33106,y:32358,ptovrint:False,ptlb:IridescenceMask,ptin:_IridescenceMask,varname:_IridescenceMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector2,id:9868,x:29863,y:33088,varname:node_9868,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_RemapRange,id:6340,x:30925,y:33237,varname:iridescenceUV,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1474-OUT;n:type:ShaderForge.SFN_Code,id:4067,x:29190,y:32848,cmnt:Change the half direction from perturbed normal space to unperturbed normal space before finding the iridescence UV coordinates.,varname:perturbedView,prsc:2,code:cgBlAHQAdQByAG4AIABSAG8AdABhAHQAZQBWAGUAYwB0AG8AcgAoAHYAaQBlAHcALAAgAGYAcgBvAG0ALAAgAHQAbwApADsA,output:2,fname:rotateView,width:247,height:132,input:2,input:2,input:2,input_1_label:from,input_2_label:to,input_3_label:view|A-8783-OUT,B-5388-OUT,C-2209-OUT;n:type:ShaderForge.SFN_NormalVector,id:8783,x:28904,y:32707,prsc:2,pt:True;n:type:ShaderForge.SFN_NormalVector,id:5388,x:28904,y:32861,prsc:2,pt:False;n:type:ShaderForge.SFN_HalfVector,id:2209,x:28904,y:33026,varname:node_2209,prsc:2;n:type:ShaderForge.SFN_Lerp,id:1474,x:30711,y:33237,varname:node_1474,prsc:2|A-3759-UVOUT,B-9794-OUT,T-6331-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:6331,x:30490,y:33435,ptovrint:False,ptlb:ViewSpaceIridescence,ptin:_ViewSpaceIridescence,varname:_ViewSpaceIridescence,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;n:type:ShaderForge.SFN_Code,id:963,x:29167,y:33497,varname:node_963,prsc:2,code:cgBlAHQAdQByAG4AIABSAG8AdABhAHQAZQBWAGUAYwB0AG8AcgAoAHYAaQBlAHcALAAgAGYAcgBvAG0ALAAgAHQAbwApADsA,output:2,fname:rotateView2,width:247,height:132,input:2,input:2,input:2,input_1_label:from,input_2_label:to,input_3_label:view|A-6123-OUT,B-4600-OUT,C-5650-OUT;n:type:ShaderForge.SFN_HalfVector,id:6123,x:28912,y:33329,varname:node_6123,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:4600,x:28912,y:33481,varname:node_4600,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5650,x:28913,y:33661,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:9794,x:29757,y:33497,varname:node_9794,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9364-XYZ;n:type:ShaderForge.SFN_Transform,id:9364,x:29576,y:33497,varname:node_9364,prsc:2,tffrom:0,tfto:3|IN-963-OUT;n:type:ShaderForge.SFN_Multiply,id:8163,x:33913,y:31699,varname:node_8163,prsc:2|A-6668-OUT,B-1697-OUT;n:type:ShaderForge.SFN_Code,id:9312,x:34470,y:31586,varname:node_9312,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABSAGkAbQBMAGkAZwBoAHQAKABuAG8AcgBtAGEAbAAsACAAdgBpAGUAdwAsACAAcgBpAG0AQwBvAGwAbwByACwAIABzAGgAYQBkAG8AdwBDAG8AbABvAHIALAAgAHIAaQBtAHAAbwB3AGUAcgAsACAAcgBpAG0AVgAsACAAcgBpAG0AUwBoAGEAZABvAHcALAAgADUALgAwACwAIAAtADEALgA1ACkAOwA=,output:2,fname:GetRimLight,width:247,height:188,input:2,input:2,input:2,input:0,input:0,input:0,input:2,input_1_label:normal,input_2_label:view,input_3_label:rimColor,input_4_label:rimpower,input_5_label:rimV,input_6_label:rimShadow,input_7_label:shadowColor|A-3513-OUT,B-1570-OUT,C-1390-OUT,D-4748-OUT,E-8163-OUT,F-6838-OUT,G-1319-OUT;n:type:ShaderForge.SFN_Step,id:8494,x:33272,y:33614,varname:node_8494,prsc:2|A-5965-OUT,B-8530-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5965,x:33052,y:33590,ptovrint:True,ptlb:Alpha Cutoff,ptin:_Cutoff,varname:_Cutoff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Code,id:9369,x:32988,y:33839,varname:node_9369,prsc:2,code:cgBlAHQAdQByAG4AIABHAGUAdABMAGkAbgBlAFcAaQBkAHQAaAAoAGMAYQBtAGUAcgBhAEQAaQBzAHQAYQBuAGMAZQAsACAAZABlAHQAYQBpAGwATQBhAHMAawBCACwAIABsAGkAbgBlAFcAaQBkAHQAaABTACkAOwA=,output:0,fname:_GetLineWidth,width:247,height:132,input:0,input:0,input:0,input_1_label:cameraDistance,input_2_label:detailMaskB,input_3_label:lineWidthS|A-1377-OUT,B-9328-OUT,C-9055-OUT;n:type:ShaderForge.SFN_Get,id:9328,x:32713,y:33995,varname:node_9328,prsc:2|IN-8630-OUT;proporder:3845-1583-5977-4573-3106-5007-2969-6061-5352-6929-5789-9055-6093-4748-1697-320-5223-2243-9144-3668-6210-9542-6331-5965;pass:END;sub:END;*/

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
        _LineWidthS ("LineWidthS", Float ) = 1
        _IridescencePower ("IridescencePower", Float ) = 0.5
        _rimpower ("rimpower", Float ) = 0
        _rimV ("rimV", Float ) = 0
        _rimColor ("rimColor", Color) = (0.6,0.714,0.729,1)
        _IridescenceTex ("IridescenceTex", 2D) = "white" {}
        _shadowV ("shadowV", Float ) = 2
        _ShadowExtend ("ShadowExtend", Float ) = 0
        _IridescenceV ("IridescenceV", Float ) = 0.3
        _IridescenceRot ("IridescenceRot", 2D) = "gray" {}
        _IridescenceMask ("IridescenceMask", 2D) = "white" {}
        [MaterialToggle] _ViewSpaceIridescence ("ViewSpaceIridescence", Float ) = 1
        _Cutoff ("Alpha Cutoff", Float ) = 0.01
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent+40"
            "RenderType"="Transparent"
        }
        LOD 600
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Utilities.cginc"
            #include "MainLighting.cginc"
            #include "LineWidth.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _ColorMask; uniform float4 _ColorMask_ST;
            uniform float4 _Color2;
            uniform float4 _Color3;
            uniform float4 _LineColor;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _LineWidthS;
            uniform float _Cutoff;
            float _GetLineWidth( float cameraDistance , float detailMaskB , float lineWidthS ){
            return GetLineWidth(cameraDistance, detailMaskB, lineWidthS);
            }
            
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
                float4 _DetailMask_var = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(o.uv0, _DetailMask),0.0,0));
                float detailMaskB = _DetailMask_var.b;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_GetLineWidth( distance(_WorldSpaceCameraPos,objPos.rgb) , detailMaskB , _LineWidthS ),1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(step(_Cutoff,textureA) - 0.5);
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 colorRGB = (lerp( lerp( lerp( float3(1,1,1), _Color.rgb, _ColorMask_var.rgb.r ), _Color2.rgb, _ColorMask_var.rgb.g ), _Color3.rgb, _ColorMask_var.rgb.b )).rgb;
                return fixed4(saturate(( _LineColor.rgb > 0.5 ? (1.0-(1.0-2.0*(_LineColor.rgb-0.5))*(1.0-colorRGB)) : (2.0*_LineColor.rgb*colorRGB) )),0);
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
            #include "Utilities.cginc"
            #include "MainLighting.cginc"
            #include "LineWidth.cginc"
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
            uniform float _IridescencePower;
            uniform float _rimpower;
            uniform float _rimV;
            uniform float4 _rimColor;
            uniform sampler2D _IridescenceTex; uniform float4 _IridescenceTex_ST;
            uniform float _shadowV;
            uniform float _ShadowExtend;
            uniform float _IridescenceV;
            uniform sampler2D _IridescenceRot; uniform float4 _IridescenceRot_ST;
            uniform sampler2D _IridescenceMask; uniform float4 _IridescenceMask_ST;
            float3 rotateView( float3 from , float3 to , float3 view ){
            return RotateVector(view, from, to);
            }
            
            uniform fixed _ViewSpaceIridescence;
            float3 rotateView2( float3 from , float3 to , float3 view ){
            return RotateVector(view, from, to);
            }
            
            float3 GetRimLight( float3 normal , float3 view , float3 rimColor , float rimpower , float rimV , float rimShadow , float3 shadowColor ){
            return GetRimLight(normal, view, rimColor, shadowColor, rimpower, rimV, rimShadow, 5.0, -1.5);
            }
            
            uniform float _Cutoff;
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
                o.pos = UnityObjectToClipPos( v.vertex );
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
                clip(step(_Cutoff,textureA) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _ColorMask_var = tex2D(_ColorMask,TRANSFORM_TEX(i.uv0, _ColorMask));
                float3 colorRGB = (lerp( lerp( lerp( float3(1,1,1), _Color.rgb, _ColorMask_var.rgb.r ), _Color2.rgb, _ColorMask_var.rgb.g ), _Color3.rgb, _ColorMask_var.rgb.b )).rgb;
                float3 textureRGB = (colorRGB*_MainTex_var.rgb);
                float shadowStrength = (1.0 - _ambientshadowG.a);
                float3 shadowRGB = lerp(float3(1,1,1),_ShadowColor.rgb,(_ShadowColor.a*shadowStrength*_shadowV));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
                float detailMaskG = _DetailMask_var.g;
                float shadowExtend = _ShadowExtend;
                float2 rampUV = float2(max(0,dot(normalDirection,lightDirection)),0.0);
                float4 _RampG_var = tex2D(_RampG,TRANSFORM_TEX(rampUV, _RampG));
                float lighting = (_RampG_var.r*attenuation);
                float2 hairGlossUV = (i.uv1+float2(0.0,lerp(mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.g,0.0,_SpeclarHeight)));
                float4 _HairGloss_var = tex2D(_HairGloss,TRANSFORM_TEX(hairGlossUV, _HairGloss));
                float3 glossRGB = _HairGloss_var.rgb;
                float3 rimRGB = GetRimLight( normalDirection , viewDirection , (_rimColor.rgb*_rimColor.a) , _rimpower , ((1.0 - detailMaskG)*_rimV) , (shadowExtend*(1.0 - lighting)*detailMaskG) , shadowRGB );
                float4 _IridescenceRot_var = tex2D(_IridescenceRot,TRANSFORM_TEX(i.uv0, _IridescenceRot));
                float textureRelativeCoordinates_ang = (_IridescenceRot_var.g*6.283186+-3.141593);
                float textureRelativeCoordinates_spd = 1.0;
                float textureRelativeCoordinates_cos = cos(textureRelativeCoordinates_spd*textureRelativeCoordinates_ang);
                float textureRelativeCoordinates_sin = sin(textureRelativeCoordinates_spd*textureRelativeCoordinates_ang);
                float2 textureRelativeCoordinates_piv = float2(0,0);
                float3 perturbedView = rotateView( normalDirection , i.normalDir , halfDirection ); // Change the half direction from perturbed normal space to unperturbed normal space before finding the iridescence UV coordinates.
                float2 textureRelativeCoordinates = (mul(float2(dot(i.tangentDir,perturbedView),dot(perturbedView,i.bitangentDir))-textureRelativeCoordinates_piv,float2x2( textureRelativeCoordinates_cos, -textureRelativeCoordinates_sin, textureRelativeCoordinates_sin, textureRelativeCoordinates_cos))+textureRelativeCoordinates_piv);
                float2 iridescenceUV = (lerp(textureRelativeCoordinates,mul( UNITY_MATRIX_V, float4(rotateView2( halfDirection , viewDirection , normalDirection ),0) ).xyz.rgb.rg,_ViewSpaceIridescence)*0.5+0.5);
                float4 _IridescenceTex_var = tex2D(_IridescenceTex,TRANSFORM_TEX(iridescenceUV, _IridescenceTex));
                float4 _IridescenceMask_var = tex2D(_IridescenceMask,TRANSFORM_TEX(i.uv0, _IridescenceMask));
                float3 iridescenceFactor = (pow(0.5*dot(normalDirection,halfDirection)+0.5,(_IridescencePower*9.0+1.0))*lighting*_IridescenceV*_IridescenceMask_var.rgb);
                float3 iridescenceRGB = (_IridescenceTex_var.rgb*iridescenceFactor);
                float3 emissive = ((textureRGB*_LightColor0.rgb*lerp(shadowRGB,float3(1,1,1),min((1.0 - detailMaskG),lerp((shadowExtend*-0.5+0.0),1.0,lighting))))+glossRGB+rimRGB+iridescenceRGB);
                float3 finalColor = emissive;
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
            #include "Utilities.cginc"
            #include "MainLighting.cginc"
            #include "LineWidth.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Cutoff;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float textureA = _MainTex_var.a;
                clip(step(_Cutoff,textureA) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Shader Forge/main_hair"
    CustomEditor "ShaderForgeMaterialInspector"
}
