//Maya ASCII 2024 scene
//Name: JohnDOrcafellerRig.ma
//Last modified: Wed, Apr 24, 2024 08:34:41 PM
//Codeset: 1252
file -rdi 1 -ns "JohnDOrcafeller" -rfn "JohnDOrcafellerRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitHub/JohnDOrcafeller/JohnDOrcafeller.ma";
file -r -ns "JohnDOrcafeller" -dr 1 -rfn "JohnDOrcafellerRN" -op "v=0;" -typ "mayaAscii"
		 "D:/GitHub/JohnDOrcafeller/JohnDOrcafeller.ma";
requires maya "2024";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.24";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.5.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "9F22A327-4FB1-9C83-A0C2-1185171F9764";
createNode transform -s -n "persp";
	rename -uid "E57FBB5D-41FA-FA3E-0A71-53B9BD2B563A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 605.63792764653886 116.75278109570309 342.79616672880377 ;
	setAttr ".r" -type "double3" 2153.9999999999227 401.9999999995328 0 ;
	setAttr ".rpt" -type "double3" -1.9314905221279626e-15 -3.7691892545046405e-16 -1.0885532181544474e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3506DBBB-4285-3C4C-573B-CA9F5A689E73";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 656.26754769502395;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -4.4408920985006262e-15 65.102323899138398 137.05906423181958 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "132D0E7D-404E-5247-28AB-DBBF141CAF5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F3B84AC2-4C04-0E59-2598-3BA3693D32C8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9F308F78-45CB-AC99-6314-1BB565D548BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "35AE29A6-4E79-F1E5-692C-61A776C8BD9B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C87D6255-4304-534C-F0E2-0EB2DC5C7C56";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "90B5EF08-416E-C56B-D3EF-A8BBC0073E43";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Geo";
	rename -uid "81095A48-4D2B-C9A6-5CB8-8AB4C085C5EF";
createNode transform -n "Joints";
	rename -uid "FD6500C2-4498-9405-638B-2B88B85BF759";
createNode joint -n "ROOT_Jnt" -p "Joints";
	rename -uid "CBC34E56-4249-860D-CEDB-38A83469CE34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "Spine_01_Jnt" -p "ROOT_Jnt";
	rename -uid "702585CD-466F-5C61-D19D-D08995981B12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -86.607886151203374 -90.000000000000213 ;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 -0.059168975979678629 0.99824798135609383 0
		 1 -3.7747582837255322e-15 0 0 3.6637359812630166e-15 0.99824798135609383 0.059168975979678518 0
		 -6.4932526533514924e-17 91.92083740234375 -17.8120231628418 1;
	setAttr ".radi" 2;
createNode joint -n "Spine_02_Jnt" -p "Spine_01_Jnt";
	rename -uid "0D08C1D8-4C96-765F-D067-27AA397BCC41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 -0.059168975979678629 0.99824798135609383 0
		 1 -3.7747582837255322e-15 0 0 3.6637359812630166e-15 0.99824798135609383 0.059168975979678518 0
		 -3.2215708965370886e-15 89.067932128906222 30.319736480712894 1;
	setAttr ".radi" 2;
createNode joint -n "Hat_Jnt" -p "Spine_02_Jnt";
	rename -uid "7C832DE0-4E80-DA88-A813-51A831A304E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 2.709091331721848e-14 20.351203105637083 8.6333575709353792e-15 ;
	setAttr ".bps" -type "matrix" -1.4823351570797316e-15 -0.40263992413646965 0.91535844972960079 0
		 0.99999999999999989 -3.7747582837255314e-15 0 0 3.3578188797287731e-15 0.91535844972960045 0.40263992413646948 0
		 -1.1179357259701683e-13 139.24674987792977 59.002586364746094 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Hat_Jnt_parentConstraint1" -p "Hat_Jnt";
	rename -uid "47C284E4-4FB9-17C1-65DB-9BB08816AC64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hat_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.2172489379008766e-15 2.5243548967072378e-28 
		-5.6843418860808015e-14 ;
	setAttr ".lr" -type "double3" 0 -3.1805546814635168e-15 0 ;
	setAttr ".rst" -type "double3" 25.663567734195382 -2.9261124455606319e-13 51.788038380615163 ;
	setAttr ".rsrr" -type "double3" 0 -3.1805546814635168e-15 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Hat_Jnt_scaleConstraint1" -p "Hat_Jnt";
	rename -uid "42A1DB0F-421A-53AB-0376-3DBC286E4848";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hat_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "L_Fin_01_Jnt" -p "Spine_02_Jnt";
	rename -uid "EE1D2C66-4753-F98D-75E8-ABAB2937306E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 88.142686151319111 7.5026847686597922 101.95208665063052 ;
	setAttr ".bps" -type "matrix" 0.96994546644672841 -0.11819527005386089 -0.21268678909686348 0
		 0.12096284831757452 0.99265703509666392 -2.0816681711721685e-17 0 0.21112503746912192 -0.025727199808676104 0.97712042745184013 0
		 43.223419189453132 84.341033935546832 47.490581512451186 1;
	setAttr ".radi" 2;
createNode joint -n "L_Fin_02_Jnt" -p "L_Fin_01_Jnt";
	rename -uid "62E5EB55-4C50-66CD-8659-71B0773DD1AA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.9021592651624879 12.641887296675867 3.850416254160939 ;
	setAttr ".bps" -type "matrix" 0.90601462457651072 -0.044396200882248965 -0.42091148404469525 0
		 0.048942913583520986 0.99880157749672993 6.4531713306337224e-15 0 0.42040705425033092 -0.020600634389917286 0.90710171568534292 0
		 71.38397979736331 80.909454345703097 41.315616607666016 1;
	setAttr ".radi" 2;
createNode joint -n "L_Fin_03_Jnt" -p "L_Fin_02_Jnt";
	rename -uid "A53A22DE-499C-87F4-173D-37AB1149C1A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.90601462457651072 -0.044396200882248965 -0.42091148404469525 0
		 0.048942913583520986 0.99880157749672993 6.4531713306337224e-15 0 0.42040705425033092 -0.020600634389917286 0.90710171568534292 0
		 98.585754394531293 79.576522827148409 28.678359985351559 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "L_Fin_03_Jnt_parentConstraint1" -p "L_Fin_03_Jnt";
	rename -uid "19CC0F3B-45C6-F559-274A-04B290124FA4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Fin_03_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-14 2.2737367544323206e-13 
		0 ;
	setAttr ".rst" -type "double3" 30.023549134080035 -4.2632564145606011e-14 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fin_03_Jnt_scaleConstraint1" -p "L_Fin_03_Jnt";
	rename -uid "C9EF62AC-4872-88F2-B429-7D9D4551D7AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Fin_03_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Fin_02_Jnt_parentConstraint1" -p "L_Fin_02_Jnt";
	rename -uid "09360EC2-4AC9-6ADA-8D0D-AD8F6358560A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Fin_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.2632564145606011e-14 1.7053025658242404e-13 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.8812706347234476e-13 -1.5902773407317584e-14 
		1.3248998094971462e-13 ;
	setAttr ".lr" -type "double3" -3.8927007531099574e-13 1.9530593590861466e-14 -1.2990578027102557e-13 ;
	setAttr ".rst" -type "double3" 29.033138028958245 1.4210854715202004e-14 -2.1316282072803006e-14 ;
	setAttr ".rsrr" -type "double3" -3.8802767113854903e-13 1.1572994866340432e-14 -1.330366387855912e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fin_02_Jnt_scaleConstraint1" -p "L_Fin_02_Jnt";
	rename -uid "109071B9-469B-1FCE-3790-A28D175E95A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Fin_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Fin_01_Jnt_parentConstraint1" -p "L_Fin_01_Jnt";
	rename -uid "930BCBDC-480B-E61F-25E9-8090BE29AFD8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Fin_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 -2.8421709430404007e-14 
		4.9737991503207013e-14 ;
	setAttr ".tg[0].tor" -type "double3" -3.8564225512745141e-14 1.5405811738338905e-15 
		1.4312496066585822e-13 ;
	setAttr ".lr" -type "double3" 2.5444437451708134e-14 -3.1805546814634844e-15 -1.4312496066585822e-13 ;
	setAttr ".rst" -type "double3" 17.420447116772309 43.223419189453146 -3.7026352623629322 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-14 -3.1805546814634844e-15 -1.4312496066585822e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fin_01_Jnt_scaleConstraint1" -p "L_Fin_01_Jnt";
	rename -uid "F5B31934-4AF9-4ACB-CAD4-B6A5D000381A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Fin_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Fin_01_Jnt" -p "Spine_02_Jnt";
	rename -uid "F6631AC2-47BD-493C-D0BF-E3920AB40AB0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -91.857313848680818 -7.5026847686602203 78.047913349369509 ;
	setAttr ".bps" -type "matrix" 0.96994546644672819 0.11819527005386071 0.21268678909686367 0
		 0.12096284831757488 -0.9926570350966637 5.134781488891349e-16 0 0.21112503746912209 0.025727199808675605 -0.9771204274518398 0
		 -43.223400000000005 84.34099999999998 47.490599999999986 1;
	setAttr ".radi" 2;
createNode joint -n "R_Fin_02_Jnt" -p "R_Fin_01_Jnt";
	rename -uid "6893BF18-4A59-E607-AE42-0FB46CB23968";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.90215926516191747 12.641887296675858 3.850416254160947 ;
	setAttr ".bps" -type "matrix" 0.9060146245765105 0.044396200882248771 0.42091148404469531 0
		 0.048942913583525378 -0.99880157749672949 -1.5036583089766964e-14 0 0.42040705425033043 0.02060063438992667 -0.90710171568534259 0
		 -71.384000000000015 80.909500000000008 41.315599999999982 1;
	setAttr ".radi" 2;
createNode joint -n "R_Fin_03_Jnt" -p "R_Fin_02_Jnt";
	rename -uid "2AC59072-4581-2DD8-A6A6-43B477D5577B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.4524530010559858e-15 -3.1805546814635168e-15 -4.1938070663892573e-16 ;
	setAttr ".bps" -type "matrix" 0.9060146245765105 0.044396200882248771 0.42091148404469531 0
		 0.048942913583525378 -0.99880157749672949 -1.5036583089766964e-14 0 0.42040705425033043 0.02060063438992667 -0.90710171568534259 0
		 -98.585799999999992 79.576499999999996 28.678399999999961 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "R_Fin_03_Jnt_parentConstraint1" -p "R_Fin_03_Jnt";
	rename -uid "95BF099B-44A3-1C52-E37D-CF9056EE537A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Fin_03_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.2632564145606011e-14 2.8421709430404007e-13 
		5.6843418860808015e-14 ;
	setAttr ".rst" -type "double3" -30.02355135675095 6.7156087013131582e-05 -6.3452489555970715e-05 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fin_03_Jnt_scaleConstraint1" -p "R_Fin_03_Jnt";
	rename -uid "BED11D24-4905-4C6A-5D6E-B68C1A83C2DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Fin_03_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Fin_02_Jnt_parentConstraint1" -p "R_Fin_02_Jnt";
	rename -uid "E765CE45-4A03-E79A-3AEF-3B990B0248AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Fin_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 2.4158453015843406e-13 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 7.5538173684758535e-15 4.7708320221952759e-15 
		-1.3934805198162035e-13 ;
	setAttr ".lr" -type "double3" -7.7029058691694702e-15 -1.4560976901075152e-14 1.358941683822185e-13 ;
	setAttr ".rst" -type "double3" -29.033174294282709 -8.3770397708349265e-05 2.8023218675343742e-05 ;
	setAttr ".rsrr" -type "double3" -7.5538173684758551e-15 -3.4787316828507115e-15 
		1.4078924082165844e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fin_02_Jnt_scaleConstraint1" -p "R_Fin_02_Jnt";
	rename -uid "2BEEBB7B-4C49-06D6-1714-0E82A42ECEA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Fin_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Fin_01_Jnt_parentConstraint1" -p "R_Fin_01_Jnt";
	rename -uid "249955D4-49E1-73E2-8F07-04BB2FE69969";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Fin_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 1.4210854715202004e-13 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.9022561468354588e-14 1.0038625713369222e-14 
		-1.4630551534732174e-13 ;
	setAttr ".lr" -type "double3" -3.49861014960987e-14 -1.2722218725854021e-14 1.4630551534732177e-13 ;
	setAttr ".rst" -type "double3" 17.420467579862169 -43.223399999999984 -3.7026680445650726 ;
	setAttr ".rsrr" -type "double3" -3.49861014960987e-14 -1.2722218725854021e-14 1.4630551534732177e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fin_01_Jnt_scaleConstraint1" -p "R_Fin_01_Jnt";
	rename -uid "B36A0044-4BED-588D-4BEB-A086D91E3D09";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Fin_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_02_Jnt_parentConstraint1" -p "Spine_02_Jnt";
	rename -uid "20B6D806-44C5-3810-0132-02B3A5DAA1F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -4.4135044397300301e-15 0 ;
	setAttr ".rst" -type "double3" 48.216235386891498 7.549516567451115e-15 -1.4210854715202004e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_02_Jnt_scaleConstraint1" -p "Spine_02_Jnt";
	rename -uid "E1922561-4437-3B33-EE4A-398E9222B20B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Jaw_Jnt" -p "Spine_02_Jnt";
	rename -uid "6C9F031B-4CFF-7D6D-9E20-80AC8737B61F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -179.99999999999994 -20.419962952741045 0 ;
	setAttr ".bps" -type "matrix" 1.0701809006122959e-15 0.29283649027787156 0.95616253323466849 0
		 -1.0000000000000002 2.8084192174016501e-15 2.9595317821476525e-16 0 -2.5003365338980226e-15 -0.95616253323466871 0.29283649027787162 0
		 -1.487079702081913e-14 86.000000000000028 85 1;
	setAttr ".radi" 1.5166061766922474;
createNode joint -n "Tongue_Jnt" -p "Jaw_Jnt";
	rename -uid "E62467E6-428F-C1D4-154A-88997846A0BE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.86755197435698506 0.38951086489427528 14.17166748233381 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -4.9435750538161776e-30 3.1805546814635168e-15 -2.8249000307521015e-30 ;
	setAttr ".bps" -type "matrix" 2.7985842040320906e-16 0.006117465357245 0.99998128813373444 0
		 -1.8429498410733365e-16 0.99998128813373433 -0.0061174653572451665 0 -1 -8.9300292268647645e-17 3.1257246834626692e-16 0
		 7.7754706485050447e-17 70.968631152876796 86.895623695080545 1;
	setAttr ".radi" 1.5166061766922474;
createNode aimConstraint -n "Tongue_Jnt_aimConstraint1" -p "Tongue_Jnt";
	rename -uid "5B8546FF-4A9B-2FA4-2E14-58A3A1EA2032";
	addAttr -dcb 0 -ci true -sn "w0" -ln "Tongue_CtrlW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 31.418738917815006 -18.374030786815247 -0.10581042070076396 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rsrr" -type "double3" -89.999999999999829 -16.677341971439876 -3.818248462760234e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Jaw_Jnt_parentConstraint1" -p "Jaw_Jnt";
	rename -uid "EC81DF70-43B2-2996-19D5-0B834541ED2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.2632564145606011e-14 -1.2621774483536189e-28 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.6670004330731851e-13 3.1805546814635168e-15 
		1.1299600123008406e-29 ;
	setAttr ".lr" -type "double3" -1.6670004330731859e-13 -3.1805546814635168e-15 3.8950561101674322e-31 ;
	setAttr ".rst" -type "double3" 54.76598908059016 -1.2189376837052438e-16 0.17281814411708751 ;
	setAttr ".rsrr" -type "double3" -1.6670004330731859e-13 -3.1805546814635168e-15 
		3.8950561101674322e-31 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Jaw_Jnt_scaleConstraint1" -p "Jaw_Jnt";
	rename -uid "B4090BF7-4FD8-6561-1E30-E9902280B3E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Tail_01_Jnt" -p "Spine_01_Jnt";
	rename -uid "4F70906E-4154-9860-5254-41BC69CCA201";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 174.81050997938425 0 ;
	setAttr ".bps" -type "matrix" -1.1025010702465322e-16 -0.031364987201237191 -0.99950799775582921 0
		 1 -3.7747582837255322e-15 0 0 -3.6688022651648392e-15 -0.99950799775582921 0.031364987201237302 0
		 6.3237400388790475e-16 97.40032958984375 -88.985244750976577 1;
	setAttr ".radi" 2;
createNode joint -n "Tail_02_Jnt" -p "Tail_01_Jnt";
	rename -uid "33D5C7BD-4BEB-260E-C552-F486BDC3128E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -1.1025010702465322e-16 -0.031364987201237191 -0.99950799775582921 0
		 1 -3.7747582837255322e-15 0 0 -3.6688022651648392e-15 -0.99950799775582921 0.031364987201237302 0
		 8.3420412039200399e-15 95.045455932617188 -164.02799987792972 1;
	setAttr ".radi" 1.7838807920532098;
createNode joint -n "R_Back_Fin_01_Jnt" -p "Tail_02_Jnt";
	rename -uid "54E3F9AA-4EB6-C7BB-2413-899D29EDBE4D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 89.230710729294969 -5.7974722396323797 115.41277554467365 ;
	setAttr ".bps" -type "matrix" 0.89861970791168189 -0.087571689605917033 0.42989977870695484 0
		 -0.096991868256921618 -0.99528517395369287 -1.2975731600306517e-15 0 0.42787287603300539 -0.041696782700023353 -0.90287661408838804 0
		 -13.624099999999984 93.42649999999999 -186.27900000000002 1;
	setAttr ".radi" 1.4968189563624219;
createNode joint -n "R_Back_Fin_02_Jnt" -p "R_Back_Fin_01_Jnt";
	rename -uid "B76F830E-4DB9-658C-73BC-4C85ACC2545C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.0174407747321023e-15 -6.361109362927032e-15 -3.7879772805062893e-16 ;
	setAttr ".bps" -type "matrix" 0.89861970791168189 -0.087571689605917033 0.42989977870695484 0
		 -0.096991868256921618 -0.99528517395369287 -1.2975731600306517e-15 0 0.42787287603300539 -0.041696782700023353 -0.90287661408838804 0
		 -34.457199999999979 95.456699999999984 -196.24500000000009 1;
	setAttr ".radi" 1.4968189563624219;
createNode parentConstraint -n "R_Back_Fin_02_Jnt_parentConstraint1" -p "R_Back_Fin_02_Jnt";
	rename -uid "EC1328EF-4B57-3550-9FB5-82BBA2814C77";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Back_Fin_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -2.5579538487363607e-13 
		-8.5265128291212022e-14 ;
	setAttr ".rst" -type "double3" -23.183203475726344 1.3330422504509443e-05 -0.00050288591586422626 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Back_Fin_02_Jnt_scaleConstraint1" -p "R_Back_Fin_02_Jnt";
	rename -uid "6AC19365-43D4-4761-ED68-A5898E69DFF3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Back_Fin_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Back_Fin_01_Jnt_parentConstraint1" -p "R_Back_Fin_01_Jnt";
	rename -uid "BFB56D96-4088-3DF7-E295-6AA78A362169";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Back_Fin_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -1.2789769243681803e-13 
		-1.9895196601282805e-13 ;
	setAttr ".tg[0].tor" -type "double3" -2.0464881528541816e-13 -3.3917633907794528e-15 
		4.2301377263464764e-13 ;
	setAttr ".lr" -type "double3" 1.9719439025073801e-13 6.3611093629277609e-15 -4.2301377263464775e-13 ;
	setAttr ".rst" -type "double3" 22.29083111218111 -13.624099999999961 0.92025706862169443 ;
	setAttr ".rsrr" -type "double3" 1.9719439025073801e-13 6.3611093629277609e-15 -4.2301377263464775e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Back_Fin_01_Jnt_scaleConstraint1" -p "R_Back_Fin_01_Jnt";
	rename -uid "3745BCD4-4F5F-1D4E-11BB-CFAFC7A8B9A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Back_Fin_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "L_Back_Fin_01_Jnt" -p "Tail_02_Jnt";
	rename -uid "881CBD73-4C22-8742-815C-CBABD2B51811";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90.769289270705301 5.7974722396327705 64.587224455326364 ;
	setAttr ".bps" -type "matrix" 0.89861970791168189 0.087571689605917186 -0.42989977870695428 0
		 -0.096991868256922534 0.99528517395369276 -1.8041124150158794e-16 0 0.42787287603300472 0.041696782700025012 0.90287661408838804 0
		 13.624135971069327 93.426528930664062 -186.27886962890631 1;
	setAttr ".radi" 1.4968189563624219;
createNode joint -n "L_Back_Fin_02_Jnt" -p "L_Back_Fin_01_Jnt";
	rename -uid "87BFB75C-4C04-F71E-D740-0890C6956F3B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.89861970791168189 0.087571689605917186 -0.42989977870695428 0
		 -0.096991868256922534 0.99528517395369276 -1.8041124150158794e-16 0 0.42787287603300472 0.041696782700025012 0.90287661408838804 0
		 34.457225799560526 95.456741333007827 -196.24542236328131 1;
	setAttr ".radi" 1.4968189563624219;
createNode parentConstraint -n "L_Back_Fin_02_Jnt_parentConstraint1" -p "L_Back_Fin_02_Jnt";
	rename -uid "CED9502E-4D07-E64A-8C4A-C8940B152A26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Back_Fin_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.9475983006414026e-14 -2.5579538487363607e-13 
		8.5265128291212022e-14 ;
	setAttr ".rst" -type "double3" 23.183433041887696 2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Back_Fin_02_Jnt_scaleConstraint1" -p "L_Back_Fin_02_Jnt";
	rename -uid "332C0BDA-4BE3-07F6-2250-09BC59CD100A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Back_Fin_02_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Back_Fin_01_Jnt_parentConstraint1" -p "L_Back_Fin_01_Jnt";
	rename -uid "F8098A90-4D5E-C6F7-DBCE-1B9D2C367B17";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Back_Fin_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.9475983006414026e-14 -5.6843418860808015e-14 
		8.5265128291212022e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.0454942295162251e-13 -3.3420672238815866e-14 
		-4.1029155390879377e-13 ;
	setAttr ".lr" -type "double3" -1.844721715248838e-13 5.0888874903416925e-14 4.1029155390879357e-13 ;
	setAttr ".rst" -type "double3" 22.29069989782036 13.624135971069302 0.92023224127915171 ;
	setAttr ".rsrr" -type "double3" -1.9719439025073788e-13 5.0888874903416981e-14 4.1347210859025709e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Back_Fin_01_Jnt_scaleConstraint1" -p "L_Back_Fin_01_Jnt";
	rename -uid "C0208524-4D33-3FD2-0CC6-DCB5C09A2ACD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Back_Fin_01_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Tail_02_Jnt_parentConstraint1" -p "Tail_02_Jnt";
	rename -uid "88D29A04-4285-03CB-DFD6-988D49CC02FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -3.3717005360170877e-15 
		-1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" 75.079694505141319 1.5987211554602406e-14 2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Tail_02_Jnt_scaleConstraint1" -p "Tail_02_Jnt";
	rename -uid "6AD2F29E-4CDC-D4EE-9422-FCB27DA8497F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Tail_01_Jnt_parentConstraint1" -p "Tail_01_Jnt";
	rename -uid "EAC224AE-4419-8C4D-91B1-B98ECAC4646A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 8.4341304244757502e-15 
		-2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 2.4649298781342254e-14 0 ;
	setAttr ".lr" -type "double3" 0 -2.5444437451708128e-14 0 ;
	setAttr ".rst" -type "double3" -71.372740718588503 -1.9761969838327887e-14 1.2586453764836847 ;
	setAttr ".rsrr" -type "double3" 0 -2.5444437451708128e-14 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Tail_01_Jnt_scaleConstraint1" -p "Tail_01_Jnt";
	rename -uid "D8B27EF2-4FAA-453E-938C-9BA5CD9305FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Top_Fin_01_Jnt" -p "Spine_01_Jnt";
	rename -uid "FCC53578-42E4-EFDD-E4ED-9B8F81C5204F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -6.8565938797575555e-13 -70.524738088354596 -179.99999999999937 ;
	setAttr ".bps" -type "matrix" -2.1416450930485369e-16 0.96086067688089838 -0.27703205522823876 0
		 -1 3.1106045792599779e-15 1.1205029051383499e-14 0 1.1594628454369121e-14 0.27703205522823854 0.96086067688089838 0
		 -3.9674758289394574e-14 149.02539062500003 -2.3316698074340856 1;
	setAttr ".radi" 1.5944431956736664;
createNode joint -n "Top_Fin_02_Jnt" -p "Top_Fin_01_Jnt";
	rename -uid "A30AE120-4EA2-28E3-B184-6EAF1D22592E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 24.982713577251875 0 ;
	setAttr ".bps" -type "matrix" -5.0910573536719606e-15 0.75395494029428756 -0.65692613588274718 0
		 -1 3.1106045792599779e-15 1.1205029051383499e-14 0 1.0419328694956049e-14 0.65692613588274695 0.75395494029428745 0
		 -4.3869550129663261e-14 169.33987426757812 -8.1886720657348562 1;
	setAttr ".radi" 1.5186397225019106;
createNode joint -n "Top_Fin_03_Jnt" -p "Top_Fin_02_Jnt";
	rename -uid "E41848AE-491D-A848-72A2-DB9B3D0130CA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -5.0910573536719606e-15 0.75395494029428756 -0.65692613588274718 0
		 -1 3.1106045792599779e-15 1.1205029051383499e-14 0 1.0419328694956049e-14 0.65692613588274695 0.75395494029428745 0
		 -9.6674105806778756e-14 185.32926940917969 -22.120342254638675 1;
	setAttr ".radi" 1.5186397225019106;
createNode parentConstraint -n "Top_Fin_03_Jnt_parentConstraint1" -p "Top_Fin_03_Jnt";
	rename -uid "2CC8A733-44D3-30F6-8032-37846F734E0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Top_Fin_03_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -2.0161391839877815e-13 
		-4.2632564145606011e-14 ;
	setAttr ".rst" -type "double3" 21.207361722917426 -5.5163339174324376e-14 2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Top_Fin_03_Jnt_scaleConstraint1" -p "Top_Fin_03_Jnt";
	rename -uid "84F08680-43AD-424D-CEE6-44AA58E49013";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Top_Fin_03_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Top_Fin_02_Jnt_parentConstraint1" -p "Top_Fin_02_Jnt";
	rename -uid "4095BD3C-44BC-1A0A-B51C-45A2F794FE98";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Top_Fin_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -1.1923443523051872e-13 
		-7.1054273576010019e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 -9.5416640443905503e-15 0 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-14 0 ;
	setAttr ".rst" -type "double3" 21.141965876387047 -3.3306690738754696e-16 1.4210854715202004e-14 ;
	setAttr ".rsrr" -type "double3" 0 9.5416640443905503e-15 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Top_Fin_02_Jnt_scaleConstraint1" -p "Top_Fin_02_Jnt";
	rename -uid "7F4DF480-4C13-34CD-3C40-0984A4056F8E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Top_Fin_02_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Top_Fin_01_Jnt_parentConstraint1" -p "Top_Fin_01_Jnt";
	rename -uid "F7CFB726-42E6-34D1-B90D-589BA6EC38D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Top_Fin_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -8.6374247790507783e-14 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.8786376878289144e-13 3.1805546814635168e-15 
		-1.0179805412575324e-13 ;
	setAttr ".lr" -type "double3" 2.8786376878289149e-13 -2.5572539342721691e-28 1.0179805412575323e-13 ;
	setAttr ".rst" -type "double3" 12.07441354975316 -2.4913404672588518e-13 57.920461636601289 ;
	setAttr ".rsrr" -type "double3" 2.8786376878289149e-13 -2.5572539342721691e-28 1.0179805412575323e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Top_Fin_01_Jnt_scaleConstraint1" -p "Top_Fin_01_Jnt";
	rename -uid "CD894743-4BAE-8ACD-513B-0E92C985141F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Top_Fin_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_01_Jnt_parentConstraint1" -p "Spine_01_Jnt";
	rename -uid "66617120-4DDE-8478-CA14-2E8A0E3697AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -5.0487097934144756e-29 -1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.0141124312808657e-13 3.9756933518293969e-16 
		-1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 9.5416640443905497e-14 -3.1805546814635302e-15 1.5902773407317581e-14 ;
	setAttr ".rst" -type "double3" -6.4932526533514924e-17 91.92083740234375 -17.8120231628418 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905497e-14 -3.1805546814635302e-15 1.5902773407317581e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_01_Jnt_scaleConstraint1" -p "Spine_01_Jnt";
	rename -uid "353852E8-46C7-0750-B43C-42B22BF9B182";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Controls";
	rename -uid "9179D95E-4136-7142-B5A1-67AC675C216C";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "4A4554EE-4ADE-0A7D-AF35-96B1B4018128";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "F319A3B3-4D63-DC06-5A24-8D9219A5AB33";
	setAttr ".s" -type "double3" 75.270659237426955 128.06357834931947 128.06357834931947 ;
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "F3116A69-44D4-FBA2-B921-82A53DA4C493";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 0 1
		1 0 1
		1 0 -1
		-1 0 -1
		-1 0 1
		;
createNode transform -n "Spine_01_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "EDA3984C-4E2F-D932-3DF6-F097CA907A6B";
	setAttr ".t" -type "double3" -8.6265388388213162e-19 0.71777501915190101 -0.13908734546098567 ;
	setAttr ".r" -type "double3" -5.3753755727594014e-14 -86.607886151203374 -90.000000000000213 ;
	setAttr ".s" -type "double3" 0.0078086214120325183 0.013285389156028123 0.0078086214120325183 ;
createNode transform -n "Spine_01_Ctrl" -p "Spine_01_Ctrl_Grp";
	rename -uid "FFAEC4F3-4217-EB2C-818A-6CAE02D561DA";
	setAttr ".rp" -type "double3" 0 1.0097419586828951e-28 0 ;
	setAttr ".sp" -type "double3" 0 1.0097419586828951e-28 0 ;
createNode nurbsCurve -n "Spine_01_CtrlShape" -p "Spine_01_Ctrl";
	rename -uid "4E20858D-486F-1466-7040-EA993F971EEC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8704783150166122e-15 46.87846842069321 -46.878468420693217
		-4.0594693635943601e-15 4.0594693635943625e-15 -66.296165823823159
		-2.8704783150166114e-15 -46.87846842069321 -46.878468420693203
		-2.1044360865730244e-31 -66.296165823823188 -3.436804943332584e-15
		2.8704783150166118e-15 -46.87846842069321 46.87846842069321
		4.0594693635943633e-15 -6.6409322725963108e-15 66.296165823823202
		2.8704783150166114e-15 46.87846842069321 46.878468420693203
		5.5358840380474008e-31 66.296165823823188 9.040784725688581e-15
		-2.8704783150166122e-15 46.87846842069321 -46.878468420693217
		-4.0594693635943601e-15 4.0594693635943625e-15 -66.296165823823159
		-2.8704783150166114e-15 -46.87846842069321 -46.878468420693203
		;
createNode transform -n "Spine_02_Ctrl_Grp" -p "Spine_01_Ctrl";
	rename -uid "49974D88-4482-338E-9372-68897A52A184";
	setAttr ".t" -type "double3" 48.216235386891491 7.5495165674510645e-15 -1.4210854715202004e-14 ;
createNode transform -n "Spine_02_Ctrl" -p "Spine_02_Ctrl_Grp";
	rename -uid "80708CC8-49BE-3F73-68FF-3397DCD767A4";
	setAttr ".rp" -type "double3" 0 1.0097419586828951e-28 0 ;
	setAttr ".sp" -type "double3" 0 1.0097419586828951e-28 0 ;
createNode nurbsCurve -n "Spine_02_CtrlShape" -p "Spine_02_Ctrl";
	rename -uid "7CC016AA-41E4-E9D9-D4C2-9090F7A3934B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Jaw_Ctrl_Grp" -p "Spine_02_Ctrl";
	rename -uid "08D5C862-4A3C-0781-8971-BD9C273B6F94";
	setAttr ".t" -type "double3" 54.765989080590131 -9.287424759955616e-15 0.1728181441170733 ;
	setAttr ".r" -type "double3" -179.99999999999994 -20.419962952741045 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "Jaw_Ctrl" -p "Jaw_Ctrl_Grp";
	rename -uid "D5C68C70-4DD5-42BB-1EE8-56BE70AA979B";
	setAttr ".rp" -type "double3" -2.8421709430404007e-14 3.7865323450608567e-29 7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 3.7865323450608567e-29 7.1054273576010019e-15 ;
createNode nurbsCurve -n "Jaw_CtrlShape" -p "Jaw_Ctrl";
	rename -uid "F76CDE1A-4BAC-B226-68B2-D08CB09F681D";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7530815894178595e-15 28.629995042463229 -28.629995042463229
		-2.4792317597013171e-15 2.4792317597013171e-15 -40.488927279725957
		-1.7530815894178591e-15 -28.629995042463229 -28.629995042463221
		-1.285238122224375e-31 -40.488927279725978 8.7208975184475555e-16
		1.7530815894178593e-15 -28.629995042463229 28.629995042463232
		2.4792317597013191e-15 -4.0558035372554728e-15 40.488927279725985
		1.7530815894178591e-15 28.629995042463229 28.629995042463229
		3.3809195970870557e-31 40.488927279725978 8.4925036092282755e-15
		-1.7530815894178595e-15 28.629995042463229 -28.629995042463229
		-2.4792317597013171e-15 2.4792317597013171e-15 -40.488927279725957
		-1.7530815894178591e-15 -28.629995042463229 -28.629995042463221
		;
createNode transform -n "Tongue_Ctrl_Grp" -p "Jaw_Ctrl";
	rename -uid "101B754F-4426-E525-384C-BA9F1475C510";
	setAttr ".t" -type "double3" 21.569555208930865 2.8889099996919683e-14 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000004 ;
createNode transform -n "Tongue_Ctrl" -p "Tongue_Ctrl_Grp";
	rename -uid "31CC0A4A-4B3A-E3E7-E679-0A97CC70F794";
	setAttr ".rp" -type "double3" 16.934415436222793 -1.7207185587903984e-14 23.296633000387615 ;
	setAttr ".sp" -type "double3" 16.934415436222793 -1.7207185587903984e-14 23.296633000387615 ;
createNode nurbsCurve -n "Tongue_CtrlShape" -p "Tongue_Ctrl";
	rename -uid "8F5A7BC0-411E-D14C-CF74-53818EBA04B4";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.981861006248518 0.15312472114169823 23.151044202365028
		19.692888074366358 -1.6662056723275178e-14 14.832139570381536
		16.981861006248518 -0.15312472114173253 23.151044202365028
		16.934415436222793 -8.9026299665887176 23.296633000387629
		16.886969866197095 -0.15312472114173253 23.442221798410216
		14.175942798079223 -1.8098968120444605e-14 31.76112643039373
		16.886969866197095 0.15312472114169823 23.442221798410216
		16.934415436222793 8.9026299665886821 23.296633000387629
		16.981861006248518 0.15312472114169823 23.151044202365028
		19.692888074366358 -1.6662056723275178e-14 14.832139570381536
		16.981861006248518 -0.15312472114173253 23.151044202365028
		;
createNode transform -n "Hat_Ctrl_Grp" -p "Spine_02_Ctrl";
	rename -uid "71F04F53-42A9-1BA1-C768-87BB7CDFDC0A";
	setAttr ".t" -type "double3" 25.663567734195379 -2.2115642650533113e-13 51.78803838061512 ;
	setAttr ".r" -type "double3" 0 20.351203105637087 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Hat_Ctrl" -p "Hat_Ctrl_Grp";
	rename -uid "AB1FC5D4-4280-B309-D64A-10B5ADDF6CD3";
	setAttr ".rp" -type "double3" 4.4408920985006262e-16 0 5.6843418860808015e-14 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-16 0 5.6843418860808015e-14 ;
createNode nurbsCurve -n "Hat_CtrlShape" -p "Hat_Ctrl";
	rename -uid "B04B9E0C-47C9-129F-685D-548F7BFB3818";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-29.718046142512712 30.381964971562823 -6.3167657076035457
		-42.02766390197089 2.6309446567459433e-15 -8.9332557340262202
		-29.718046142512705 -30.381964971562823 -6.3167657076035439
		-1.1795233536135761e-14 -42.966586914328452 2.4309855862028187e-14
		29.718046142512687 -30.381964971562823 6.3167657076035946
		42.027663901970904 -4.3039923974026182e-15 8.9332557340262753
		29.718046142512684 30.381964971562823 6.3167657076035937
		-3.8852143306527807e-15 42.966586914328452 2.5991182347089493e-14
		-29.718046142512712 30.381964971562823 -6.3167657076035457
		-42.02766390197089 2.6309446567459433e-15 -8.9332557340262202
		-29.718046142512705 -30.381964971562823 -6.3167657076035439
		;
createNode transform -n "L_Fin_01_Ctrl_Grp" -p "Spine_02_Ctrl";
	rename -uid "10E4EB74-4AD4-D367-4F61-3F9569C21237";
	setAttr ".t" -type "double3" 17.420447116772319 43.223419189453153 -3.7026352623629037 ;
	setAttr ".r" -type "double3" 88.142686151319126 7.5026847686597957 101.95208665063052 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "L_Fin_01_Ctrl" -p "L_Fin_01_Ctrl_Grp";
	rename -uid "6C836781-4085-8EEC-3205-A3B2E24112D7";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 1.1368683772161603e-13 -7.1054273576010019e-14 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 1.1368683772161603e-13 -7.1054273576010019e-14 ;
createNode nurbsCurve -n "L_Fin_01_CtrlShape" -p "L_Fin_01_Ctrl";
	rename -uid "522EA973-4E08-5310-E935-EC9CFE16B391";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.3949170014825194 6.3872987359379154 -13.951436730665966
		7.629564791373773 3.6318488512711283e-14 -19.730311039097948
		5.3949170014825185 -6.3872987359378444 -13.951436730665964
		-1.5955023924562906e-14 -9.0330044992918417 -9.1407462081835018e-15
		-5.3949170014825514 -6.3872987359378444 13.951436730665947
		-7.6295647913738094 3.4860534271725487e-14 19.730311039097945
		-5.3949170014825514 6.3872987359379154 13.951436730665947
		-1.739098296739739e-14 9.0330044992919127 -5.4273078497383922e-15
		5.3949170014825194 6.3872987359379154 -13.951436730665966
		7.629564791373773 3.6318488512711283e-14 -19.730311039097948
		5.3949170014825185 -6.3872987359378444 -13.951436730665964
		;
createNode transform -n "L_Fin_02_Ctrl_Grp" -p "L_Fin_01_Ctrl";
	rename -uid "0C36D59B-4DF0-BC1C-C380-CA83149B23BC";
	setAttr ".t" -type "double3" 29.033138028958273 1.4210854715202004e-14 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -0.9021592651628968 12.641887296675886 3.8504162541609412 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
createNode transform -n "L_Fin_02_Ctrl" -p "L_Fin_02_Ctrl_Grp";
	rename -uid "CF8EC383-487A-8CA3-4F05-A4B9F5682027";
createNode nurbsCurve -n "L_Fin_02_CtrlShape" -p "L_Fin_02_Ctrl";
	rename -uid "F0FF544B-4CA3-4C96-F82B-3B9C09A3CFA7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0547462811066789e-15 6.3872987359378799 -14.958198965873549
		-1.4916364956036493e-15 5.5311200233707159e-16 -21.154087846213571
		-1.0547462811066785e-15 -6.3872987359378799 -14.958198965873548
		-7.7326699335359555e-32 -9.0330044992918772 -1.0966316494796943e-15
		1.0547462811066787e-15 -6.3872987359378799 14.958198965873548
		1.4916364956036503e-15 -9.048422386487228e-16 21.154087846213582
		1.0547462811066785e-15 6.3872987359378799 14.958198965873548
		2.034139422416967e-31 9.0330044992918772 2.8847754905487698e-15
		-1.0547462811066789e-15 6.3872987359378799 -14.958198965873549
		-1.4916364956036493e-15 5.5311200233707159e-16 -21.154087846213571
		-1.0547462811066785e-15 -6.3872987359378799 -14.958198965873548
		;
createNode transform -n "L_Fin_03_Ctrl_Grp" -p "L_Fin_02_Ctrl";
	rename -uid "43438CF2-47EA-7195-31E2-DBBB60AD548F";
	setAttr ".t" -type "double3" 30.023549134080071 1.4210854715202004e-14 1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "L_Fin_03_Ctrl" -p "L_Fin_03_Ctrl_Grp";
	rename -uid "5FE05269-4433-175B-454E-17956A2ED30D";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 -4.2632564145606011e-14 1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 -4.2632564145606011e-14 1.4210854715202004e-14 ;
createNode nurbsCurve -n "L_Fin_03_CtrlShape" -p "L_Fin_03_Ctrl";
	rename -uid "8DAC8ADB-4B6C-6520-FA92-B3AF52C87FFA";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0547462811066789e-15 6.3872987359378621 -14.958198965873548
		-1.4916364956036493e-15 -1.7329576252850034e-14 -21.154087846213567
		-1.0547462811066785e-15 -6.3872987359378977 -14.958198965873546
		-7.7326699335359555e-32 -9.033004499291895 7.7373437388558118e-16
		1.0547462811066787e-15 -6.3872987359378977 14.958198965873549
		1.4916364956036503e-15 -1.8787530493835829e-14 21.154087846213585
		1.0547462811066785e-15 6.3872987359378621 14.958198965873549
		2.034139422416967e-31 9.0330044992918594 4.7551415139140453e-15
		-1.0547462811066789e-15 6.3872987359378621 -14.958198965873548
		-1.4916364956036493e-15 -1.7329576252850034e-14 -21.154087846213567
		-1.0547462811066785e-15 -6.3872987359378977 -14.958198965873546
		;
createNode transform -n "R_Fin_01_Ctrl_Grp" -p "Spine_02_Ctrl";
	rename -uid "7F53FB14-4C78-4E43-8477-878CD0BCEEA2";
	setAttr ".t" -type "double3" 17.420467579862173 -43.223399999999984 -3.7026680445650442 ;
	setAttr ".r" -type "double3" -91.857313848680818 -7.5026847686602283 78.047913349369509 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "R_Fin_01_Ctrl" -p "R_Fin_01_Ctrl_Grp";
	rename -uid "187FC462-42D5-964C-9AB7-C8A2385D548D";
createNode nurbsCurve -n "R_Fin_01_CtrlShape" -p "R_Fin_01_Ctrl";
	rename -uid "9EFBB07E-4340-441B-6C3A-9E9348DA7031";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.3949170014825354 6.3872987359378799 -13.951436730665957
		7.6295647913737898 5.5311200233707159e-16 -19.730311039097941
		5.3949170014825354 -6.3872987359378799 -13.951436730665955
		3.9551798606499785e-16 -9.0330044992918772 -1.0228228083786767e-15
		-5.3949170014825354 -6.3872987359378799 13.951436730665955
		-7.6295647913737934 -9.048422386487228e-16 19.730311039097952
		-5.3949170014825354 6.3872987359378799 13.951436730665955
		-1.040441056769484e-15 9.0330044992918772 2.6906155500664331e-15
		5.3949170014825354 6.3872987359378799 -13.951436730665957
		7.6295647913737898 5.5311200233707159e-16 -19.730311039097941
		5.3949170014825354 -6.3872987359378799 -13.951436730665955
		;
createNode transform -n "R_Fin_02_Ctrl_Grp" -p "R_Fin_01_Ctrl";
	rename -uid "34D2F190-4142-0A90-33DD-7791C5DA4664";
	setAttr ".t" -type "double3" -29.033174294282709 -8.3770397736770974e-05 2.8023218682449169e-05 ;
	setAttr ".r" -type "double3" -0.90215926516191924 12.641887296675865 3.850416254160955 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "R_Fin_02_Ctrl" -p "R_Fin_02_Ctrl_Grp";
	rename -uid "A6B208BD-4E17-5B83-6E35-E2B568303AFC";
createNode nurbsCurve -n "R_Fin_02_CtrlShape" -p "R_Fin_02_Ctrl";
	rename -uid "D703EACB-4C6F-9788-2B04-C19B30909406";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0547462811066789e-15 6.3872987359378799 -14.958198965873549
		-1.4916364956036493e-15 5.5311200233707159e-16 -21.154087846213571
		-1.0547462811066785e-15 -6.3872987359378799 -14.958198965873548
		-7.7326699335359555e-32 -9.0330044992918772 -1.0966316494796943e-15
		1.0547462811066787e-15 -6.3872987359378799 14.958198965873548
		1.4916364956036503e-15 -9.048422386487228e-16 21.154087846213582
		1.0547462811066785e-15 6.3872987359378799 14.958198965873548
		2.034139422416967e-31 9.0330044992918772 2.8847754905487698e-15
		-1.0547462811066789e-15 6.3872987359378799 -14.958198965873549
		-1.4916364956036493e-15 5.5311200233707159e-16 -21.154087846213571
		-1.0547462811066785e-15 -6.3872987359378799 -14.958198965873548
		;
createNode transform -n "R_Fin_03_Ctrl_Grp" -p "R_Fin_02_Ctrl";
	rename -uid "39540598-462B-1A62-4F2C-E6A3CE025040";
	setAttr ".t" -type "double3" -30.023551356750971 6.7156087013131582e-05 -6.3452489570181569e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "R_Fin_03_Ctrl" -p "R_Fin_03_Ctrl_Grp";
	rename -uid "3E283EE8-4601-0304-3394-F29F3C3BF3D8";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 0 -4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 0 -4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_Fin_03_CtrlShape" -p "R_Fin_03_Ctrl";
	rename -uid "3FF4C3CF-4E30-AB61-4F34-8D9AB060C40D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0547462811066789e-15 6.3872987359378799 -14.958198965873553
		-1.4916364956036493e-15 5.5311200233707159e-16 -21.154087846213574
		-1.0547462811066785e-15 -6.3872987359378799 -14.958198965873551
		-7.7326699335359555e-32 -9.0330044992918772 -4.8373636962102455e-15
		1.0547462811066787e-15 -6.3872987359378799 14.958198965873544
		1.4916364956036503e-15 -9.048422386487228e-16 21.154087846213578
		1.0547462811066785e-15 6.3872987359378799 14.958198965873544
		2.034139422416967e-31 9.0330044992918772 -8.5595655618178112e-16
		-1.0547462811066789e-15 6.3872987359378799 -14.958198965873553
		-1.4916364956036493e-15 5.5311200233707159e-16 -21.154087846213574
		-1.0547462811066785e-15 -6.3872987359378799 -14.958198965873551
		;
createNode transform -n "Tail_01_Ctrl_Grp" -p "Spine_01_Ctrl";
	rename -uid "5A4C8B06-4227-17C9-771E-D4A563D19253";
	setAttr ".t" -type "double3" -71.372740718588517 -1.9761969838327786e-14 1.2586453764836563 ;
	setAttr ".r" -type "double3" 0 174.81050997938422 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Tail_01_Ctrl" -p "Tail_01_Ctrl_Grp";
	rename -uid "E2A0AD37-4704-8287-59E1-B988C63E13AF";
createNode nurbsCurve -n "Tail_01_CtrlShape" -p "Tail_01_Ctrl";
	rename -uid "22C91C25-438A-17BD-FB98-06A750E92868";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.2161869284447327e-15 36.193079179853783 -36.193079179853783
		-3.1341616109605113e-15 3.1341616109605113e-15 -51.184743440192499
		-2.2161869284447319e-15 -36.193079179853783 -36.193079179853775
		-1.6247549136365919e-31 -51.18474344019252 -2.6534261384879458e-15
		2.2161869284447323e-15 -36.193079179853783 36.193079179853783
		3.1341616109605132e-15 -5.1272107572530299e-15 51.184743440192527
		2.2161869284447319e-15 36.193079179853783 36.193079179853775
		4.2740451228371294e-31 51.18474344019252 6.9800453907410468e-15
		-2.2161869284447327e-15 36.193079179853783 -36.193079179853783
		-3.1341616109605113e-15 3.1341616109605113e-15 -51.184743440192499
		-2.2161869284447319e-15 -36.193079179853783 -36.193079179853775
		;
createNode transform -n "Tail_02_Ctrl_Grp" -p "Tail_01_Ctrl";
	rename -uid "FBAE29BF-4390-F39E-14D1-66B5E2B3EB54";
	setAttr ".t" -type "double3" 75.079694505141347 2.4380708304318043e-14 -2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "Tail_02_Ctrl" -p "Tail_02_Ctrl_Grp";
	rename -uid "98044CC4-46E9-2CDE-6CC6-F5BDE7328442";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 0 2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 0 2.8421709430404007e-14 ;
createNode nurbsCurve -n "Tail_02_CtrlShape" -p "Tail_02_Ctrl";
	rename -uid "69E7C36E-4A53-F702-C5B2-2DA4F3EA56BA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.4422700918794965e-16 15.420397290800206 -15.420397290800189
		-1.3353386423525828e-15 1.3353386423525828e-15 -21.807734985830958
		-9.4422700918794945e-16 -15.420397290800206 -15.420397290800185
		-6.9224191022691663e-32 -21.807734985830987 1.8383911835702884e-14
		9.4422700918794965e-16 -15.420397290800206 15.420397290800226
		1.3353386423525838e-15 -2.18449572852358e-15 21.807734985831008
		9.4422700918794945e-16 15.420397290800206 15.420397290800224
		1.8209965917915519e-31 21.807734985830987 2.2488341788515866e-14
		-9.4422700918794965e-16 15.420397290800206 -15.420397290800189
		-1.3353386423525828e-15 1.3353386423525828e-15 -21.807734985830958
		-9.4422700918794945e-16 -15.420397290800206 -15.420397290800185
		;
createNode transform -n "L_Back_Fin_01_Ctrl_Grp" -p "Tail_02_Ctrl";
	rename -uid "1154A9E6-49BB-EF5C-736E-EB8AFD46C54B";
	setAttr ".t" -type "double3" 22.29069989782036 13.624135971069341 0.92023224127902381 ;
	setAttr ".r" -type "double3" -90.769289270705542 5.7974722396333274 64.587224455326336 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "L_Back_Fin_01_Ctrl" -p "L_Back_Fin_01_Ctrl_Grp";
	rename -uid "F918CE51-4D6D-D3BE-799A-F38E76438B8E";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 -2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 -2.8421709430404007e-14 -2.8421709430404007e-14 ;
createNode nurbsCurve -n "L_Back_Fin_01_CtrlShape" -p "L_Back_Fin_01_Ctrl";
	rename -uid "8825AC07-4E41-34F8-2ACD-869942078C04";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.1449809536521261e-15 9.5657109781143905 -17.328729395666979
		7.7054677863324545e-15 -1.0619786394986349e-14 -24.506524130045548
		8.1449809536521261e-15 -9.5657109781144118 -17.328729395666972
		9.2060596030368356e-15 -13.527958198990602 -1.96825417445031e-14
		1.0267138252421545e-14 -9.5657109781144118 17.32872939566694
		1.0706651419741218e-14 -1.2803239755343143e-14 24.506524130045531
		1.0267138252421545e-14 9.5657109781143905 17.328729395666937
		9.2060596030368356e-15 13.52795819899058 -1.5070173163169655e-14
		8.1449809536521261e-15 9.5657109781143905 -17.328729395666979
		7.7054677863324545e-15 -1.0619786394986349e-14 -24.506524130045548
		8.1449809536521261e-15 -9.5657109781144118 -17.328729395666972
		;
createNode transform -n "L_Back_Fin_02_Ctrl_Grp" -p "L_Back_Fin_01_Ctrl";
	rename -uid "DDE24959-4588-9986-44F9-BBAB7D953D3C";
	setAttr ".t" -type "double3" 23.183433041887724 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "L_Back_Fin_02_Ctrl" -p "L_Back_Fin_02_Ctrl_Grp";
	rename -uid "A3564E6C-4BB4-C456-4F5B-4CA6961195AE";
	setAttr ".rp" -type "double3" 0 0 -5.6843418860808015e-14 ;
	setAttr ".sp" -type "double3" 0 0 -5.6843418860808015e-14 ;
createNode nurbsCurve -n "L_Back_Fin_02_CtrlShape" -p "L_Back_Fin_02_Ctrl";
	rename -uid "5FBAB5E8-4D53-183D-C09A-C9ABE2C9A3DC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0610786493847097e-15 6.8850865695505936 -17.328729395666979
		-1.5005918167043818e-15 5.9621824126079918e-16 -24.506524130045548
		-1.0610786493847093e-15 -6.8850865695505936 -17.328729395666972
		-7.7790944762612722e-32 -9.7369828047712979 -1.96825417445031e-14
		1.0610786493847095e-15 -6.8850865695505936 17.32872939566694
		1.5005918167043828e-15 -9.753602269814055e-16 24.506524130045531
		1.0610786493847093e-15 6.8850865695505936 17.328729395666937
		2.0463517621827824e-31 9.7369828047712979 -1.5070173163169655e-14
		-1.0610786493847097e-15 6.8850865695505936 -17.328729395666979
		-1.5005918167043818e-15 5.9621824126079918e-16 -24.506524130045548
		-1.0610786493847093e-15 -6.8850865695505936 -17.328729395666972
		;
createNode transform -n "R_Back_Fin_01_Ctrl_Grp" -p "Tail_02_Ctrl";
	rename -uid "7B5567B5-4E25-405D-56E4-E58983DBAFAB";
	setAttr ".t" -type "double3" 22.29083111218111 -13.62409999999997 0.92025706862185075 ;
	setAttr ".r" -type "double3" 89.230710729295268 -5.7974722396318255 115.41277554467365 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "R_Back_Fin_01_Ctrl" -p "R_Back_Fin_01_Ctrl_Grp";
	rename -uid "EE39F883-4038-6C05-9248-0C8FB2572FD4";
	setAttr ".rp" -type "double3" 4.2632564145606011e-14 -1.4210854715202004e-14 1.1368683772161603e-13 ;
	setAttr ".sp" -type "double3" 4.2632564145606011e-14 -1.4210854715202004e-14 1.1368683772161603e-13 ;
createNode nurbsCurve -n "R_Back_Fin_01_CtrlShape" -p "R_Back_Fin_01_Ctrl";
	rename -uid "A1E2D901-447C-1FC7-25A8-7BB717F87367";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.1449809536521261e-15 9.5657109781144012 -17.328729395666926
		7.7054677863324545e-15 8.2834853536965066e-16 -24.506524130045495
		8.1449809536521261e-15 -9.5657109781144012 -17.328729395666919
		9.2060596030368356e-15 -13.527958198990591 3.5553815873717914e-14
		1.0267138252421545e-14 -9.5657109781144012 17.328729395666993
		1.0706651419741218e-14 -1.3551048249871427e-15 24.506524130045584
		1.0267138252421545e-14 9.5657109781144012 17.32872939566699
		9.2060596030368356e-15 13.527958198990591 4.0166184455051359e-14
		8.1449809536521261e-15 9.5657109781144012 -17.328729395666926
		7.7054677863324545e-15 8.2834853536965066e-16 -24.506524130045495
		8.1449809536521261e-15 -9.5657109781144012 -17.328729395666919
		;
createNode transform -n "R_Back_Fin_02_Ctrl_Grp" -p "R_Back_Fin_01_Ctrl";
	rename -uid "6C86C9A1-4D9A-4D25-DC7D-258000BA14E2";
	setAttr ".t" -type "double3" -23.183203475726302 1.3330422490298588e-05 -0.00050288591580738284 ;
	setAttr ".s" -type "double3" 1 0.99999999999999911 0.99999999999999933 ;
createNode transform -n "R_Back_Fin_02_Ctrl" -p "R_Back_Fin_02_Ctrl_Grp";
	rename -uid "81050904-4749-78A8-2B93-A291E11DA471";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 -1.4210854715202004e-14 -5.6843418860808015e-14 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 -1.4210854715202004e-14 -5.6843418860808015e-14 ;
createNode nurbsCurve -n "R_Back_Fin_02_CtrlShape" -p "R_Back_Fin_02_Ctrl";
	rename -uid "504DB521-4BED-226A-D22A-3F9923DBAEE8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.1449809536521261e-15 6.8850865695505812 -17.328729395666979
		7.7054677863324545e-15 -1.1626120938651169e-14 -24.506524130045548
		8.1449809536521261e-15 -6.8850865695506061 -17.328729395666972
		9.2060596030368356e-15 -9.7369828047713103 -1.96825417445031e-14
		1.0267138252421545e-14 -6.8850865695506061 17.32872939566694
		1.0706651419741218e-14 -1.3197699406893373e-14 24.506524130045531
		1.0267138252421545e-14 6.8850865695505812 17.328729395666937
		9.2060596030368356e-15 9.7369828047712854 -1.5070173163169655e-14
		8.1449809536521261e-15 6.8850865695505812 -17.328729395666979
		7.7054677863324545e-15 -1.1626120938651169e-14 -24.506524130045548
		8.1449809536521261e-15 -6.8850865695506061 -17.328729395666972
		;
createNode transform -n "Top_Fin_01_Ctrl_Grp" -p "Spine_01_Ctrl";
	rename -uid "9F41547F-4C31-46A7-30EF-9EA5A9B76DDE";
	setAttr ".t" -type "double3" 12.074413549753165 -2.4913404672588518e-13 57.920461636601317 ;
	setAttr ".r" -type "double3" 1.3556815608472748e-28 -70.524738088354596 -179.99999999999932 ;
createNode transform -n "Top_Fin_01_Ctrl" -p "Top_Fin_01_Ctrl_Grp";
	rename -uid "815DDABD-4C78-4294-2306-31A94C889D35";
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 -2.5243548967072378e-29 0 ;
	setAttr ".sp" -type "double3" 5.6843418860808015e-14 -2.5243548967072378e-29 0 ;
createNode nurbsCurve -n "Top_Fin_01_CtrlShape" -p "Top_Fin_01_Ctrl";
	rename -uid "27759041-47A2-9BA0-D1F2-2AAD6B5C0E50";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8219937598631133 5.9125476169561466 -15.099034279608205
		5.4051154105037424 5.120006416683795e-16 -21.353259056958191
		3.821993759863112 -5.9125476169561466 -15.099034279608201
		2.0661992202131611e-14 -8.3616050280761058 -3.1420883105002664e-15
		-3.821993759863072 -5.9125476169561466 15.099034279608199
		-5.4051154105037051 -8.3758769442592629e-16 21.353259056958194
		-3.8219937598630711 5.9125476169561466 15.099034279608198
		1.9644696384675256e-14 8.3616050280761058 8.7680480795050376e-16
		3.8219937598631133 5.9125476169561466 -15.099034279608205
		5.4051154105037424 5.120006416683795e-16 -21.353259056958191
		3.821993759863112 -5.9125476169561466 -15.099034279608201
		;
createNode transform -n "Top_Fin_02_Ctrl_Grp" -p "Top_Fin_01_Ctrl";
	rename -uid "835B2F53-4213-DC9B-1767-8B82AF1B717C";
	setAttr ".t" -type "double3" 21.141965876387076 -4.4831914962936032e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0 24.982713577251882 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "Top_Fin_02_Ctrl" -p "Top_Fin_02_Ctrl_Grp";
	rename -uid "54E157E7-4500-74DD-7D27-E3AFE8EA38D4";
	setAttr ".rp" -type "double3" 0 1.8932661725304283e-29 0 ;
	setAttr ".sp" -type "double3" 0 1.8932661725304283e-29 0 ;
createNode nurbsCurve -n "Top_Fin_02_CtrlShape" -p "Top_Fin_02_Ctrl";
	rename -uid "2C7F4A9F-4200-09DB-1C30-6B871F687A59";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7592971032514999 5.9125476169561466 -10.201059564089126
		6.7306625107812525 5.1200064166839617e-16 -14.42647678611061
		4.7592971032514981 -5.9125476169561466 -10.201059564089123
		3.4891873310483306e-16 -8.3616050280761058 -7.4787110411686968e-16
		-4.759297103251499 -5.9125476169561466 10.201059564089125
		-6.730662510781257 -8.3758769442590962e-16 14.426476786110618
		-4.7592971032514981 5.9125476169561466 10.201059564089123
		-9.1785807014754385e-16 8.3616050280761058 1.9673335456528247e-15
		4.7592971032514999 5.9125476169561466 -10.201059564089126
		6.7306625107812525 5.1200064166839617e-16 -14.42647678611061
		4.7592971032514981 -5.9125476169561466 -10.201059564089123
		;
createNode transform -n "Top_Fin_03_Ctrl_Grp" -p "Top_Fin_02_Ctrl";
	rename -uid "EF44040E-4359-D0ED-9826-10A7D974AD90";
	setAttr ".t" -type "double3" 21.207361722917398 -1.0197958438996662e-14 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "Top_Fin_03_Ctrl" -p "Top_Fin_03_Ctrl_Grp";
	rename -uid "4155E805-49AC-BCF2-54FF-93A2085AB29C";
createNode nurbsCurve -n "Top_Fin_03_CtrlShape" -p "Top_Fin_03_Ctrl";
	rename -uid "1184B702-4BA1-4133-2EEF-03904BBA7CF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.7916194124535254e-16 5.9125476169561466 -6.2649456647410942
		-1.2433227408314351e-15 5.1200064166839064e-16 -8.8599711266073751
		-8.7916194124535234e-16 -5.9125476169561466 -6.2649456647410924
		-6.4454070439044803e-32 -8.3616050280761058 -4.593024677569839e-16
		8.7916194124535244e-16 -5.9125476169561466 6.2649456647410924
		1.2433227408314359e-15 -8.3758769442591514e-16 8.8599711266073822
		8.7916194124535234e-16 5.9125476169561466 6.2649456647410924
		1.6955148317749085e-31 8.3616050280761058 1.2082311342760928e-15
		-8.7916194124535254e-16 5.9125476169561466 -6.2649456647410942
		-1.2433227408314351e-15 5.1200064166839064e-16 -8.8599711266073751
		-8.7916194124535234e-16 -5.9125476169561466 -6.2649456647410924
		;
createNode fosterParent -n "JohnDOrcafellerRNfosterParent1";
	rename -uid "46D07B57-427A-B712-7960-1FAF5ED67DBE";
createNode mesh -n "JohnDOrcaFeller_GeoShapeTag" -p "JohnDOrcafellerRNfosterParent1";
	rename -uid "90C0496C-4F34-E410-A3E6-779B94B7D81C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 15 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 26 "f[5801:5802]" "f[5986:5987]" "f[6198]" "f[6299:6300]" "f[6689]" "f[6691]" "f[6693]" "f[6791:6792]" "f[6871]" "f[6873]" "f[6875]" "f[6978:6979]" "f[7000]" "f[7470:7471]" "f[7655:7656]" "f[7866]" "f[7967:7968]" "f[8357]" "f[8359]" "f[8361]" "f[8459:8460]" "f[8539]" "f[8541]" "f[8543]" "f[8646:8647]" "f[8668]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 26 "f[5797:5798]" "f[5817]" "f[5834:5835]" "f[5846]" "f[5858:5859]" "f[5876]" "f[5914]" "f[5923]" "f[5925]" "f[5927]" "f[5933:5934]" "f[7459]" "f[7462]" "f[7466:7467]" "f[7486]" "f[7503:7504]" "f[7515]" "f[7527:7528]" "f[7545]" "f[7583]" "f[7592]" "f[7594]" "f[7596]" "f[7602:7603]" "f[9127]" "f[9130]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 28 "f[5969]" "f[6211]" "f[6271:6272]" "f[6728]" "f[6730]" "f[6732]" "f[6763:6764]" "f[6910]" "f[6912]" "f[6914]" "f[6950:6951]" "f[7025]" "f[7027]" "f[7029]" "f[7638]" "f[7879]" "f[7939:7940]" "f[8396]" "f[8398]" "f[8400]" "f[8431:8432]" "f[8578]" "f[8580]" "f[8582]" "f[8618:8619]" "f[8693]" "f[8695]" "f[8697]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 28 "f[5756:5759]" "f[5782:5785]" "f[6101]" "f[6190]" "f[6317:6318]" "f[6322]" "f[6324]" "f[6664]" "f[6666]" "f[6668]" "f[6808:6809]" "f[6847]" "f[6849]" "f[6851]" "f[7062]" "f[7769]" "f[7858]" "f[7985:7986]" "f[7990]" "f[7992]" "f[8332]" "f[8334]" "f[8336]" "f[8476:8477]" "f[8515]" "f[8517]" "f[8519]" "f[8730]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[5710]" "f[5712]" "f[5721]" "f[5723]" "f[5727]" "f[5729:5730]" "f[5732]" "f[5734]" "f[5774]" "f[5787]" "f[5789]" "f[5791]" "f[5793]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[5532]" "f[5534]" "f[5536]" "f[5616]" "f[5640]" "f[5686]" "f[5688]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster7";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 6 "f[5562]" "f[5564]" "f[5566]" "f[5606]" "f[5666]" "f[5668]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster8";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 6 "f[5996:5998]" "f[6032:6033]" "f[6083:6084]" "f[7665:7667]" "f[7700:7701]" "f[7751:7752]";
	setAttr ".gtag[8].gtagnm" -type "string" "cluster9";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 8 "f[6003]" "f[6028]" "f[6042:6044]" "f[6072:6073]" "f[7672]" "f[7696]" "f[7710:7712]" "f[7740:7741]";
	setAttr ".gtag[9].gtagnm" -type "string" "cluster10";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 10 "f[6007]" "f[6024]" "f[6051:6052]" "f[6061:6062]" "f[6064]" "f[7676]" "f[7692]" "f[7719:7720]" "f[7729:7730]" "f[7732]";
	setAttr ".gtag[10].gtagnm" -type "string" "cluster11";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 27 "f[7517:7518]" "f[7522]" "f[7524]" "f[7526]" "f[7595]" "f[7597]" "f[7600:7601]" "f[8800:8801]" "f[8803]" "f[8805]" "f[8807:8808]" "f[8810]" "f[8812]" "f[8814]" "f[8816]" "f[8818]" "f[8820]" "f[8822]" "f[8824]" "f[8826]" "f[8828]" "f[8830]" "f[8832]" "f[8834]" "f[8836]" "f[8838]" "f[9129]";
	setAttr ".gtag[11].gtagnm" -type "string" "cluster12";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 27 "f[8862:8863]" "f[8865]" "f[8867]" "f[8869]" "f[8909:8910]" "f[8914]" "f[8916]" "f[8918]" "f[8920]" "f[8922]" "f[8924]" "f[8926]" "f[8941:8942]" "f[8944:8945]" "f[8947]" "f[8949]" "f[8951]" "f[8953]" "f[8955]" "f[8957]" "f[8959]" "f[8961]" "f[8963]" "f[8965]" "f[8967]" "f[8969]" "f[8973]";
	setAttr ".gtag[12].gtagnm" -type "string" "cluster13";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 14 "f[439]" "f[497]" "f[544:546]" "f[661:662]" "f[697:699]" "f[813:814]" "f[828:830]" "f[975]" "f[1033]" "f[1080:1082]" "f[1197:1198]" "f[1233:1235]" "f[1349:1350]" "f[1364:1366]";
	setAttr ".gtag[13].gtagnm" -type "string" "cluster14";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "f[5284:5507]";
	setAttr ".gtag[14].gtagnm" -type "string" "cluster15";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 16 "f[6180]" "f[6455]" "f[6458]" "f[6460:6461]" "f[6645]" "f[6647]" "f[6649]" "f[7067]" "f[7848]" "f[8123]" "f[8126]" "f[8128:8129]" "f[8313]" "f[8315]" "f[8317]" "f[8735]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".clst";
	setAttr ".clst[0].clsn" -type "string" "PolySphere1_ColorSet";
	setAttr ".clst[1].clsn" -type "string" "PolySphere1_1_ColorSet";
	setAttr ".clst[2].clsn" -type "string" "PolySphere1_2_ColorSet";
	setAttr ".clst[3].clsn" -type "string" "PolySphere1_6_ColorSet";
	setAttr ".clst[4].clsn" -type "string" "PolySphere1_3_ColorSet";
	setAttr ".clst[5].clsn" -type "string" "PolySphere_ColorSet";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "JohnDOrcaFeller_GeoShapeDeformed" -p "JohnDOrcafellerRNfosterParent1";
	rename -uid "F3FD5562-4F29-7921-8C53-DABD11F896ED";
	setAttr -k off ".v";
	setAttr -s 50 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44612124562263489 0.49843356013298035 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".clst";
	setAttr ".clst[0].clsn" -type "string" "PolySphere1_ColorSet";
	setAttr ".clst[1].clsn" -type "string" "PolySphere1_1_ColorSet";
	setAttr ".clst[2].clsn" -type "string" "PolySphere1_2_ColorSet";
	setAttr ".clst[3].clsn" -type "string" "PolySphere1_6_ColorSet";
	setAttr ".clst[4].clsn" -type "string" "PolySphere1_3_ColorSet";
	setAttr ".clst[5].clsn" -type "string" "PolySphere_ColorSet";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8E96B412-4310-10C1-6395-DC99D9A59708";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "8A7A1F55-407D-477A-D26F-F0BAEBDA7318";
	setAttr ".version" 6;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableLegacySSSGI" no;
	setAttr ".enableLegacyVolumePhase" no;
	setAttr ".enableLegacyDispersionNestedDielectricsTechnique" no;
	setAttr ".enableLegacyTimeBehavior" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "06C316D6-4279-A3D1-6411-BC91648D14D1";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DB463B31-4091-D879-4D04-57996DE98A5F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0CC579C0-4A55-1DA7-1853-71B631C65239";
createNode displayLayerManager -n "layerManager";
	rename -uid "4ABBEF38-4228-9E39-A49E-A88E5EE65E6E";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "7FD7E5DB-4524-061F-EA30-FAA4E2B98B30";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CFB8F409-4D17-87A4-8C21-6096F0C886A3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0F59F793-4F04-C402-ADFC-0E9AD9236E4B";
	setAttr ".g" yes;
createNode reference -n "JohnDOrcafellerRN";
	rename -uid "4D1A4CDB-43D9-4507-AE2D-7798E76805D7";
	setAttr -s 128 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"JohnDOrcafellerRN"
		"JohnDOrcafellerRN" 0
		"JohnDOrcafellerRN" 131
		0 "|JohnDOrcafeller:JohnDOrcaFeller_Geo" "|Geo" "-s -r "
		0 "|JohnDOrcafellerRNfosterParent1|JohnDOrcaFeller_GeoShapeDeformed" "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" 
		"-s -r "
		0 "|JohnDOrcafellerRNfosterParent1|JohnDOrcaFeller_GeoShapeTag" "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" 
		"-s -r "
		2 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo|JohnDOrcafeller:JohnDOrcaFeller_GeoShape" 
		"intermediateObject" " 1"
		2 "JohnDOrcafeller:layer1" "displayType" " 0"
		2 "JohnDOrcafeller:layer1" "visibility" " 1"
		2 "JohnDOrcafeller:layer1" "hideOnPlayback" " 0"
		2 "JohnDOrcafeller:layer1" "overrideRGBColors" " 0"
		2 "JohnDOrcafeller:layer1" "color" " 0"
		2 "JohnDOrcafeller:layer1" "overrideColorRGB" " -type \"float3\" 0 0 0"
		5 4 "JohnDOrcafellerRN" "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo.drawOverride" 
		"JohnDOrcafellerRN.placeHolderList[1]" ""
		5 3 "JohnDOrcafellerRN" "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo|JohnDOrcafeller:JohnDOrcaFeller_GeoShape.outMesh" 
		"JohnDOrcafellerRN.placeHolderList[2]" ""
		5 3 "JohnDOrcafellerRN" "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo|JohnDOrcafeller:JohnDOrcaFeller_GeoShape.worldMesh" 
		"JohnDOrcafellerRN.placeHolderList[3]" ""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_0.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[4]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId19.message" "JohnDOrcafeller:SelSet_0.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[5]" "JohnDOrcafellerRN.placeHolderList[6]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_0.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[7]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_1.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[8]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId20.message" "JohnDOrcafeller:SelSet_1.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[9]" "JohnDOrcafellerRN.placeHolderList[10]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_1.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[11]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_20.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[12]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId22.message" "JohnDOrcafeller:SelSet_20.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[13]" "JohnDOrcafellerRN.placeHolderList[14]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_20.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[15]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_21.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[16]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId23.message" "JohnDOrcafeller:SelSet_21.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[17]" "JohnDOrcafellerRN.placeHolderList[18]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_21.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[19]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_3.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[20]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId24.message" "JohnDOrcafeller:SelSet_3.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[21]" "JohnDOrcafellerRN.placeHolderList[22]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_3.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[23]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_22.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[24]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId12.message" "JohnDOrcafeller:SelSet_22.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[25]" "JohnDOrcafellerRN.placeHolderList[26]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_22.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[27]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_23.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[28]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId13.message" "JohnDOrcafeller:SelSet_23.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[29]" "JohnDOrcafellerRN.placeHolderList[30]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_23.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[31]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_24.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[32]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId14.message" "JohnDOrcafeller:SelSet_24.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[33]" "JohnDOrcafellerRN.placeHolderList[34]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_24.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[35]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_25.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[36]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId15.message" "JohnDOrcafeller:SelSet_25.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[37]" "JohnDOrcafellerRN.placeHolderList[38]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_25.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[39]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_4.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[40]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId16.message" "JohnDOrcafeller:SelSet_4.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[41]" "JohnDOrcafellerRN.placeHolderList[42]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_4.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[43]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_5.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[44]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId17.message" "JohnDOrcafeller:SelSet_5.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[45]" "JohnDOrcafellerRN.placeHolderList[46]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_5.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[47]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_26.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[48]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId7.message" "JohnDOrcafeller:SelSet_26.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[49]" "JohnDOrcafellerRN.placeHolderList[50]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_26.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[51]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_27.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[52]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId8.message" "JohnDOrcafeller:SelSet_27.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[53]" "JohnDOrcafellerRN.placeHolderList[54]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_27.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[55]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_28.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[56]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId9.message" "JohnDOrcafeller:SelSet_28.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[57]" "JohnDOrcafellerRN.placeHolderList[58]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_28.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[59]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_29.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[60]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId10.message" "JohnDOrcafeller:SelSet_29.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[61]" "JohnDOrcafellerRN.placeHolderList[62]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_29.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[63]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_30.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[64]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId3.message" "JohnDOrcafeller:SelSet_30.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[65]" "JohnDOrcafellerRN.placeHolderList[66]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_30.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[67]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_31.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[68]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId4.message" "JohnDOrcafeller:SelSet_31.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[69]" "JohnDOrcafellerRN.placeHolderList[70]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_31.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[71]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_32.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[72]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId5.message" "JohnDOrcafeller:SelSet_32.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[73]" "JohnDOrcafellerRN.placeHolderList[74]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_32.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[75]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_33.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[76]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId1.message" "JohnDOrcafeller:SelSet_33.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[77]" "JohnDOrcafellerRN.placeHolderList[78]" ""
		
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:SelSet_33.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[79]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:set1.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[80]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:set1.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[81]" 
		""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId25.message" "JohnDOrcafeller:set1.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[82]" "JohnDOrcafellerRN.placeHolderList[83]" ""
		
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:set2.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[84]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:set2.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[85]" 
		""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId2.message" "JohnDOrcafeller:set2.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[86]" "JohnDOrcafellerRN.placeHolderList[87]" ""
		
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:set3.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[88]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:set3.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[89]" 
		""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId6.message" "JohnDOrcafeller:set3.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[90]" "JohnDOrcafellerRN.placeHolderList[91]" ""
		
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:set4.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[92]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:set4.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[93]" 
		""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId11.message" "JohnDOrcafeller:set4.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[94]" "JohnDOrcafellerRN.placeHolderList[95]" ""
		
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:set6.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[96]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:set6.dagSetMembers" "JohnDOrcafellerRN.placeHolderList[97]" 
		""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId21.message" "JohnDOrcafeller:set6.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[98]" "JohnDOrcafellerRN.placeHolderList[99]" ""
		
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:Teeth_Substance_MatSG.memberWireframeColor" 
		"JohnDOrcafellerRN.placeHolderList[100]" ""
		5 4 "JohnDOrcafellerRN" "JohnDOrcafeller:Teeth_Substance_MatSG.dagSetMembers" 
		"JohnDOrcafellerRN.placeHolderList[101]" ""
		5 0 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId18.message" "JohnDOrcafeller:Teeth_Substance_MatSG.groupNodes" 
		"JohnDOrcafellerRN.placeHolderList[102]" "JohnDOrcafellerRN.placeHolderList[103]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId1.groupId" "JohnDOrcafellerRN.placeHolderList[104]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId2.groupId" "JohnDOrcafellerRN.placeHolderList[105]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId3.groupId" "JohnDOrcafellerRN.placeHolderList[106]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId4.groupId" "JohnDOrcafellerRN.placeHolderList[107]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId5.groupId" "JohnDOrcafellerRN.placeHolderList[108]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId6.groupId" "JohnDOrcafellerRN.placeHolderList[109]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId7.groupId" "JohnDOrcafellerRN.placeHolderList[110]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId8.groupId" "JohnDOrcafellerRN.placeHolderList[111]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId9.groupId" "JohnDOrcafellerRN.placeHolderList[112]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId10.groupId" "JohnDOrcafellerRN.placeHolderList[113]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId11.groupId" "JohnDOrcafellerRN.placeHolderList[114]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId12.groupId" "JohnDOrcafellerRN.placeHolderList[115]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId13.groupId" "JohnDOrcafellerRN.placeHolderList[116]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId14.groupId" "JohnDOrcafellerRN.placeHolderList[117]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId15.groupId" "JohnDOrcafellerRN.placeHolderList[118]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId16.groupId" "JohnDOrcafellerRN.placeHolderList[119]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId17.groupId" "JohnDOrcafellerRN.placeHolderList[120]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId18.groupId" "JohnDOrcafellerRN.placeHolderList[121]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId19.groupId" "JohnDOrcafellerRN.placeHolderList[122]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId20.groupId" "JohnDOrcafellerRN.placeHolderList[123]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId21.groupId" "JohnDOrcafellerRN.placeHolderList[124]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId22.groupId" "JohnDOrcafellerRN.placeHolderList[125]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId23.groupId" "JohnDOrcafellerRN.placeHolderList[126]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId24.groupId" "JohnDOrcafellerRN.placeHolderList[127]" 
		""
		5 3 "JohnDOrcafellerRN" "JohnDOrcafeller:groupId25.groupId" "JohnDOrcafellerRN.placeHolderList[128]" 
		""
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "translateX"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "translateY"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "translateZ"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "rotateX"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "rotateY"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "rotateZ"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "scaleX"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "scaleY"
		8 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "scaleZ"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "translateX"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "translateY"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "translateZ"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "rotateX"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "rotateY"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "rotateZ"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "scaleX"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "scaleY"
		9 "|Geo|JohnDOrcafeller:JohnDOrcaFeller_Geo" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A0D2294C-4494-FA03-EAB1-1197C901F1D4";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".img" -type "string" "";
	setAttr ".fltr" -type "string" "";
	setAttr ".rndrdvc" 1;
	setAttr ".rndfb" 1;
	setAttr ".igl" -type "string" "";
	setAttr ".file" -type "string" "";
	setAttr ".ai_user_options" -type "string" "";
	setAttr ".kick_render_flags" -type "string" "";
	setAttr ".export_prefix" -type "string" "";
	setAttr ".version" -type "string" "5.3.3.3";
	setAttr ".post_translation" -type "string" "";
	setAttr ".ipr_refinement_started" -type "string" "";
	setAttr ".ipr_refinement_finished" -type "string" "";
	setAttr ".ipr_step_started" -type "string" "";
	setAttr ".ipr_step_finished" -type "string" "";
	setAttr ".output_overscan" -type "string" "";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1  1;Background.Offset=0  0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1  1;Foreground.Offset=0  0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "37EF1489-49AD-2F40-532F-A69AE95C81E1";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2C94720C-4D52-1939-1B1F-2EBA37246A0E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "BA6E9B07-4771-22EB-9ED2-68BEFBBA9E12";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A6B20EF6-4B49-F2AF-BEAB-2C9DC8B1FB94";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 850\n            -height 513\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 849\n            -height 512\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 850\n            -height 512\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1721\n            -height 1051\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1721\\n    -height 1051\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1721\\n    -height 1051\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "74A2E8BB-4DB3-C167-995A-16A8B2C8CB51";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Joint_Layer";
	rename -uid "D53743B0-49FA-CBCF-6699-62A847E07473";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "Control_Layer";
	rename -uid "FD5C9B4D-41E4-6719-2C88-20ACAA70BD05";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode displayLayer -n "Geo_Layer";
	rename -uid "A4D0E483-4438-9282-2320-B4B21A0B9441";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "B10FBF6B-4130-EC3B-1F8D-A8BECF6905CC";
	setAttr -s 9201 ".wl";
	setAttr ".wl[0:499].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr ".wl[500:999].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1;
	setAttr ".wl[1000:1499].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr ".wl[1500:1999].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr ".wl[2000:2499].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr ".wl[2500:2999].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1;
	setAttr ".wl[3000:3499].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr ".wl[3500:3999].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1;
	setAttr ".wl[4000:4499].w"
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1;
	setAttr ".wl[4500:4999].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1;
	setAttr ".wl[5000:5470].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		3 2 0.014617019367343069 11 0.98322038738546236 22 0.0021625932471945907
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 2 0.15240279827904604 11 0.82780070919703663 22 0.019796492523917294
		2 2 0.089591233291073075 22 0.91040876670892701
		1 11 1
		3 2 0.00056359886865900649 11 0.99676267425964493 22 0.0026737268716959996
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999978
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1.0000000000000002
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		3 2 0.0049227084518601132 11 0.99436294991273166 22 0.00071434163540813091
		3 2 0.20669493450943405 11 0.77051497202396446 22 0.02279009346660154
		3 2 0.20081996547171513 11 0.78105339860392642 22 0.018126635924358515
		1 2 1
		3 2 0.99527429523610333 11 0.0047250216562022013 22 6.8310769438924534e-07
		3 2 0.26918155252870685 11 0.70923155684280803 22 0.021586890628485161
		3 2 0.033526560377591851 11 0.96118842449614617 22 0.0052850151262619121
		3 2 0.0062103358104717279 11 0.99268552295098667 22 0.0011041412385416761
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		3 2 0.034691613665836042 11 0.95892208397228273 22 0.0063863023618812315
		3 2 0.99571250344146012 11 0.004284757836643005 22 2.7387218969753669e-06
		3 2 0.031617698003708741 11 0.9626871145195488 22 0.0056951874767425525
		3 2 0.99302585679949784 11 0.0069688481370151385 22 5.2950634870629859e-06
		1 2 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 0.99999999999999989
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1;
	setAttr ".wl[5471:5795].w"
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 2 0.13013913338497352 11 0.85098040103912354 22 0.018880465575902949
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		3 2 0.16594413853491816 11 0.81019610166549683 22 0.02385975979958499
		3 2 0.16465835749223517 11 0.81098037958145142 22 0.024361262926313465
		1 2 1
		2 2 0.99529411736875772 11 0.0047058826312422752
		3 2 0.18834857380665576 11 0.78196078538894653 22 0.029690640804397761
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		3 2 0.038914719044919617 11 0.95392155647277832 22 0.0071637244823020696
		2 2 0.99607843114063144 11 0.0039215688593685627
		3 2 0.033961853164453583 11 0.96000003814697266 22 0.0060381086885737956
		2 2 0.9937254898250103 11 0.0062745101749897003
		1 2 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		3 1 0.13099414110183716 2 0.86083611287176609 12 0.0081697460263967514
		3 1 0.18125903606414795 2 0.81851617242500652 12 0.0002247915108455345
		3 1 0.2119871973991394 2 0.72723329439759254 12 0.060779508203268051
		3 1 0.13099414110183716 2 0.86083611287176609 4 0.0081697460263967514
		3 1 0.2119871973991394 2 0.72723329439759254 4 0.060779508203268051
		3 1 0.18125903606414795 2 0.81851617242500652 4 0.0002247915108455345
		2 2 0.42992323637008667 4 0.57007676362991333
		2 2 0.077618062496185303 4 0.9223819375038147
		2 2 0.10024458169937134 4 0.89975541830062866
		2 2 0.42475956678390503 4 0.57524043321609497
		2 2 0.42475956678390503 12 0.57524043321609497
		2 2 0.10024458169937134 12 0.89975541830062866
		2 2 0.077618062496185303 12 0.9223819375038147
		2 2 0.42992323637008667 12 0.57007676362991333
		2 2 0.17830729484558105 4 0.82169270515441895
		2 2 0.47074604034423828 4 0.52925395965576172
		2 2 0.47074604034423828 12 0.52925395965576172
		2 2 0.17830729484558105 12 0.82169270515441895
		2 2 0.21711069345474243 4 0.78288930654525757
		2 2 0.3691258430480957 4 0.6308741569519043
		2 2 0.3691258430480957 12 0.6308741569519043
		2 2 0.21711069345474243 12 0.78288930654525757
		3 2 0.028608858585357666 4 0.96807960071600974 5 0.0033115406986325979
		2 4 0.99983363428327721 5 0.00016636571672279388
		2 12 0.99983363428327721 13 0.00016636571672279388
		3 2 0.028608858585357666 12 0.96807960071600974 13 0.0033115406986325979
		2 2 0.033310949802398682 4 0.96668905019760132
		2 2 0.033310949802398682 12 0.96668905019760132
		2 2 0.039586067199707031 4 0.96041393280029297
		2 2 0.039586067199707031 12 0.96041393280029297
		2 4 0.87879499047994614 5 0.12120500952005386
		2 4 0.84508293867111206 5 0.15491706132888794
		2 12 0.84508293867111206 13 0.15491706132888794
		2 12 0.87879499047994614 13 0.12120500952005386
		3 2 1.71661376953125e-05 4 0.83445869386196136 5 0.16552414000034332
		3 2 1.71661376953125e-05 12 0.83445869386196136 13 0.16552414000034332
		2 4 0.84732489287853241 5 0.15267510712146759
		2 12 0.84732489287853241 13 0.15267510712146759
		2 4 0.66388973593711853 5 0.33611026406288147
		2 4 0.63209530711174011 5 0.36790469288825989
		2 12 0.63209530711174011 13 0.36790469288825989
		2 12 0.66388973593711853 13 0.33611026406288147
		2 4 0.60152101516723633 5 0.39847898483276367
		2 12 0.60152101516723633 13 0.39847898483276367
		2 4 0.59323439002037048 5 0.40676560997962952
		2 12 0.59323439002037048 13 0.40676560997962952
		2 4 0.41492670774459839 5 0.58507329225540161
		2 4 0.33315825462341309 5 0.66684174537658691
		2 12 0.33315825462341309 13 0.66684174537658691
		2 12 0.41492670774459839 13 0.58507329225540161
		2 4 0.27627366781234741 5 0.72372633218765259
		2 12 0.27627366781234741 13 0.72372633218765259
		2 4 0.19786453247070312 5 0.80213546752929688
		2 12 0.19786453247070312 13 0.80213546752929688
		2 4 0.01015937328338623 5 0.98984062671661377
		2 4 0.074613571166992188 5 0.92538642883300781
		2 12 0.074613571166992188 13 0.92538642883300781
		2 12 0.01015937328338623 13 0.98984062671661377
		2 4 0.06216275691986084 5 0.93783724308013916
		2 12 0.06216275691986084 13 0.93783724308013916
		2 4 0.0021613836288452148 5 0.99783861637115479
		2 12 0.0021613836288452148 13 0.99783861637115479
		1 5 1
		1 5 1
		1 13 1
		1 13 1
		2 4 1.1026859283447266e-05 5 0.99998897314071655
		2 12 1.1026859283447266e-05 13 0.99998897314071655
		1 5 1
		1 13 1
		2 5 0.97199999168515205 6 0.028000008314847946
		2 5 0.96167905256152153 6 0.03832094743847847
		2 13 0.96167905256152153 14 0.03832094743847847
		2 13 0.97199999168515205 14 0.028000008314847946
		2 5 0.95424022898077965 6 0.045759771019220352
		2 13 0.95424022898077965 14 0.045759771019220352
		2 5 0.90688561648130417 6 0.093114383518695831
		2 13 0.90688561648130417 14 0.093114383518695831
		2 5 0.77036827802658081 6 0.22963172197341919
		2 5 0.67641836404800415 6 0.32358163595199585
		2 13 0.67641836404800415 14 0.32358163595199585
		2 13 0.77036827802658081 14 0.22963172197341919
		2 5 0.62850576639175415 6 0.37149423360824585
		2 13 0.62850576639175415 14 0.37149423360824585
		2 5 0.62337580323219299 6 0.37662419676780701
		2 13 0.62337580323219299 14 0.37662419676780701
		2 5 0.41668194532394409 6 0.58331805467605591
		2 5 0.23910778760910034 6 0.76089221239089966
		2 13 0.23910778760910034 14 0.76089221239089966
		2 13 0.41668194532394409 14 0.58331805467605591
		2 5 0.18035167455673218 6 0.81964832544326782
		2 13 0.18035167455673218 14 0.81964832544326782
		2 5 0.1979101300239563 6 0.8020898699760437
		2 13 0.1979101300239563 14 0.8020898699760437
		2 5 0.10916340351104736 6 0.89083659648895264
		2 5 0.04778897762298584 6 0.95221102237701416
		2 13 0.04778897762298584 14 0.95221102237701416
		2 13 0.10916340351104736 14 0.89083659648895264
		2 5 0.040163815021514893 6 0.95983618497848511
		2 13 0.040163815021514893 14 0.95983618497848511
		2 5 0.036826550960540771 6 0.96317344903945923
		2 13 0.036826550960540771 14 0.96317344903945923
		2 5 0.0021918416023254395 6 0.99780815839767456
		1 6 1
		1 14 1
		2 13 0.0021918416023254395 14 0.99780815839767456
		1 6 1
		1 14 1
		1 6 1
		1 14 1
		1 6 1
		1 6 1
		1 14 1
		1 14 1
		1 6 1
		1 14 1
		1 6 1
		1 14 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 6 1
		1 6 1
		1 14 1
		1 14 1
		1 6 1
		1 14 1
		1 6 1
		1 14 1
		2 5 0.15054410696029663 6 0.84945589303970337
		2 5 0.000682830810546875 6 0.99931716918945312
		2 13 0.000682830810546875 14 0.99931716918945312
		2 13 0.15054410696029663 14 0.84945589303970337
		1 6 1
		1 14 1
		1 6 1
		1 14 1
		1 6 1
		1 14 1
		2 5 0.5792967677116394 6 0.4207032322883606
		2 13 0.5792967677116394 14 0.4207032322883606
		2 5 0.88536442071199417 6 0.11463557928800583
		2 13 0.88536442071199417 14 0.11463557928800583
		2 5 0.99245198303833604 6 0.0075480169616639614
		2 13 0.99245198303833604 14 0.0075480169616639614
		1 5 1
		1 13 1
		2 4 0.17912197113037109 5 0.82087802886962891
		2 12 0.17912197113037109 13 0.82087802886962891
		2 4 0.49935686588287354 5 0.50064313411712646
		2 12 0.49935686588287354 13 0.50064313411712646
		2 4 0.78862181305885315 5 0.21137818694114685
		2 12 0.78862181305885315 13 0.21137818694114685
		2 4 0.99999999989783006 5 1.0216993917566697e-10
		2 12 0.99999999989783006 13 1.0216993917566697e-10
		1 4 1
		1 12 1
		1 6 1
		1 14 1
		2 5 0.11728489398956299 6 0.88271510601043701
		2 13 0.11728489398956299 14 0.88271510601043701
		2 5 0.52207466959953308 6 0.47792533040046692
		2 13 0.52207466959953308 14 0.47792533040046692
		2 5 0.84449887275695801 6 0.15550112724304199
		2 13 0.84449887275695801 14 0.15550112724304199
		1 5 1
		1 13 1
		1 5 1
		1 13 1
		2 4 0.14586645364761353 5 0.85413354635238647
		2 12 0.14586645364761353 13 0.85413354635238647
		2 4 0.44838500022888184 5 0.55161499977111816
		2 12 0.44838500022888184 13 0.55161499977111816
		2 4 0.71238645911216736 5 0.28761354088783264
		2 12 0.71238645911216736 13 0.28761354088783264
		2 4 0.94994413107633591 5 0.050055868923664093
		2 12 0.94994413107633591 13 0.050055868923664093
		2 4 0.99953690991969779 5 0.00046309008030220866
		2 12 0.99953690991969779 13 0.00046309008030220866
		1 6 1
		1 6 1
		1 14 1
		1 14 1
		1 6 1
		1 14 1
		2 5 0.00063729286193847656 6 0.99936270713806152
		2 13 0.00063729286193847656 14 0.99936270713806152
		2 5 0.13796705007553101 6 0.86203294992446899
		2 13 0.13796705007553101 14 0.86203294992446899
		2 5 0.53140544891357422 6 0.46859455108642578
		2 13 0.53140544891357422 14 0.46859455108642578
		2 5 0.87667917460203171 6 0.12332082539796829
		2 13 0.87667917460203171 14 0.12332082539796829
		1 5 1
		1 13 1
		1 5 1
		1 13 1
		2 4 0.15054440498352051 5 0.84945559501647949
		2 12 0.15054440498352051 13 0.84945559501647949
		2 4 0.47638571262359619 5 0.52361428737640381
		2 12 0.47638571262359619 13 0.52361428737640381
		2 4 0.75126448273658752 5 0.24873551726341248
		2 12 0.75126448273658752 13 0.24873551726341248
		2 4 0.99540428258478642 5 0.0045957174152135849
		2 12 0.99540428258478642 13 0.0045957174152135849
		2 4 0.99999832854109627 5 1.6714589037292171e-06
		2 12 0.99999832854109627 13 1.6714589037292171e-06
		1 4 1
		1 12 1
		1 4 1
		1 12 1
		1 2 0.029644966125488281;
	setAttr ".wl[5795:6064].w"
		1 4 0.97035503387451172
		2 2 0.029644966125488281 12 0.97035503387451172
		2 2 0.73768982291221619 4 0.26231017708778381
		2 2 0.79121711850166321 4 0.20878288149833679
		2 2 0.79121711850166321 12 0.20878288149833679
		2 2 0.73768982291221619 12 0.26231017708778381
		2 2 0.74011054635047913 4 0.25988945364952087
		2 2 0.74011054635047913 12 0.25988945364952087
		3 1 0.036557614803314209 2 0.65773847699165344 4 0.30570390820503235
		3 1 0.036557614803314209 2 0.65773847699165344 12 0.30570390820503235
		2 2 0.3973422646522522 4 0.6026577353477478
		2 2 0.3973422646522522 12 0.6026577353477478
		2 2 0.41077101230621338 4 0.58922898769378662
		2 2 0.41077101230621338 12 0.58922898769378662
		2 2 0.45427650213241577 4 0.54572349786758423
		2 2 0.45427650213241577 12 0.54572349786758423
		2 2 0.80336631834506989 4 0.19663368165493011
		2 2 0.80336631834506989 12 0.19663368165493011
		2 2 0.59166207909584045 4 0.40833792090415955
		2 2 0.80829653143882751 4 0.19170346856117249
		2 2 0.80829653143882751 12 0.19170346856117249
		2 2 0.59166207909584045 12 0.40833792090415955
		2 2 0.84442445635795593 4 0.15557554364204407
		3 1 0.043859660625457764 2 0.76088941097259521 4 0.19525092840194702
		3 1 0.043859660625457764 2 0.76088941097259521 12 0.19525092840194702
		2 2 0.84442445635795593 12 0.15557554364204407
		2 2 0.79009278118610382 4 0.20990721881389618
		2 2 0.79009278118610382 12 0.20990721881389618
		2 2 0.76794974505901337 4 0.23205025494098663
		2 2 0.76794974505901337 12 0.23205025494098663
		2 2 0.8775484561920166 4 0.1224515438079834
		2 2 0.99907962227007374 4 0.00092037772992625833
		2 2 0.8775484561920166 12 0.1224515438079834
		2 2 0.99907962227007374 12 0.00092037772992625833
		1 2 1
		2 2 0.95095552876591682 12 0.049044471234083176
		1 2 1
		1 2 1
		2 2 0.95095552876591682 4 0.049044471234083176
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 1 0.023675382137298584 2 0.97044449672102928 12 0.0058801211416721344
		3 1 0.023675382137298584 2 0.97044449672102928 4 0.0058801211416721344
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99627788900397718 22 0.0037221109960228205
		2 2 0.99979443590564188 22 0.00020556409435812384
		2 2 0.99979443590564188 22 0.00020556409435812384
		2 2 0.99627788900397718 22 0.0037221109960228205
		2 2 0.99997246465403333 22 2.7535345966543306e-05
		2 2 0.99999999631043535 22 3.6895646537971061e-09
		2 1 0.26747751235961914 2 0.73252248764038086
		3 1 0.26364701986312866 2 0.6456746906042099 12 0.090678289532661438
		3 1 0.26364701986312866 2 0.6456746906042099 4 0.090678289532661438
		2 1 0.26747751235961914 2 0.73252248764038086
		2 2 0.98276869766414165 12 0.017231302335858345
		2 2 0.98276869766414165 4 0.017231302335858345
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99988548644614639 22 0.00011451355385361239
		2 2 0.99988548644614639 22 0.00011451355385361239
		2 2 0.98828364629298449 22 0.011716353707015514
		2 2 0.98828364629298449 22 0.011716353707015514
		3 1 0.00023478269577026367 2 0.54846853017807007 12 0.45129668712615967
		3 1 0.00023478269577026367 2 0.54846853017807007 4 0.45129668712615967
		2 2 0.7759488970041275 12 0.2240511029958725
		2 2 0.97395090200006962 12 0.026049097999930382
		2 2 0.97395090200006962 4 0.026049097999930382
		2 2 0.7759488970041275 4 0.2240511029958725
		2 2 0.98236275464296341 12 0.017637245357036591
		2 2 0.80225276947021484 12 0.19774723052978516
		2 2 0.80225276947021484 4 0.19774723052978516
		2 2 0.98236275464296341 4 0.017637245357036591
		3 1 0.0049179792404174805 2 0.99388472212012857 12 0.0011972986394539475
		3 1 0.013610720634460449 2 0.88901733607053757 12 0.097371943295001984
		3 1 0.013610720634460449 2 0.88901733607053757 4 0.097371943295001984
		3 1 0.0049179792404174805 2 0.99388472212012857 4 0.0011972986394539475
		2 2 0.59376844763755798 12 0.40623155236244202
		2 2 0.59376844763755798 4 0.40623155236244202
		2 1 0.75455503417573344 2 0.24544496582426656
		3 15 0.37819963693618774 16 0.48600155115127563 17 0.13579881191253662
		2 1 0.97678742557764053 7 0.023212574422359467
		1 18 1
		1 2 1
		1 2 1
		2 2 0.69079217314720154 22 0.30920782685279846
		3 15 0.50943899154663086 16 0.4769615363329649 17 0.013599472120404243
		2 2 0.67873150110244751 22 0.32126849889755249
		1 22 1
		2 17 1.0013580322265625e-05 18 0.99998998641967773
		1 22 1
		1 22 1
		2 8 0.013233721256256104 9 0.9867662787437439
		3 15 0.48951399326324463 16 0.51030997326597571 17 0.00017603347077965736
		1 18 1
		1 2 1
		1 2 1
		2 1 0.49939811229705811 2 0.50060188770294189
		2 1 0.41193962097167969 2 0.58806037902832031
		2 1 0.60890819460170553 2 0.39109180539829447
		2 1 0.79988789558410645 2 0.20011210441589355
		2 1 0.55776280164718628 2 0.44223719835281372
		3 1 0.66938081532167382 2 0.15610723048997932 7 0.17451195418834686
		3 1 0.73011702299118042 2 0.058833256363868713 7 0.21104972064495087
		3 15 0.59017002582550049 16 0.40589594282209873 17 0.0039340313524007797
		3 15 0.62436014413833618 16 0.37544624065048993 17 0.00019361521117389202
		3 15 0.36527663469314575 16 0.47982549667358398 17 0.15489786863327026
		3 15 0.57609423995018005 16 0.41965659242123365 17 0.0042491676285862923
		3 15 0.48032879829406738 16 0.49604181945323944 17 0.023629382252693176
		3 15 0.28542780876159668 16 0.51469726860523224 17 0.19987492263317108
		2 1 0.97486936673521996 7 0.025130633264780045
		2 1 0.99996061860656482 7 3.9381393435178325e-05
		1 1 1
		2 1 0.87412834167480469 7 0.12587165832519531
		2 1 0.90033389627933502 7 0.099666103720664978
		2 1 0.99940659484127536 7 0.00059340515872463584
		2 1 0.99370491458103061 7 0.0062950854189693928
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.87160924077033997 22 0.12839075922966003
		2 2 0.73448446393013 22 0.26551553606987
		2 2 0.38393136826566571 22 0.61606863173433424
		2 2 0.95756673067808151 22 0.042433269321918488
		2 2 0.98616715054959059 22 0.013832849450409412
		2 2 0.9323553740978241 22 0.067644625902175903
		2 2 0.99828479997813702 22 0.0017152000218629837
		3 15 0.6236329972743988 16 0.37608340691076592 17 0.00028359581483528018
		2 2 0.59678474068641663 22 0.40321525931358337
		2 2 0.25230480635756225 22 0.74769519364243775
		2 2 0.28905350216184866 22 0.71094649783815134
		2 2 0.66703981161117554 22 0.33296018838882446
		2 2 0.88591136038303375 22 0.11408863961696625
		2 2 0.90188851207494736 22 0.098111487925052643
		2 2 0.31809661590709604 22 0.68190338409290396
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 2 0.64065518975257874 22 0.35934481024742126
		2 2 0.092872615855490961 22 0.907127384144509
		2 17 1.0728836059570312e-06 18 0.99999892711639404
		1 18 1
		1 18 1
		2 17 0.0052191019058227539 18 0.99478089809417725
		2 17 0.0048282146453857422 18 0.99517178535461426
		2 17 0.0036686062812805176 18 0.99633139371871948
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 8 0.0031759738922119141 9 0.99682402610778809
		2 8 0.00015550851821899414 9 0.99984449148178101
		2 8 0.011088311672210693 9 0.98891168832778931
		2 15 0.61392009258270264 16 0.38607990741729736
		3 15 0.59118106961250305 16 0.40878614865141571 17 3.2781736081233248e-05
		3 15 0.35077524185180664 16 0.59488879889249802 17 0.054335959255695343
		3 15 0.19338065385818481 16 0.71623591333627701 17 0.090383432805538177
		3 15 0.39054882526397705 16 0.60943644836879685 17 1.4726367226103321e-05
		2 15 0.59626257419586182 16 0.40373742580413818
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99932021263521165 22 0.00067978736478835344
		2 2 0.99879169254563749 22 0.0012083074543625116
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 15 0.40591073036193848 16 0.56467592716217041 17 0.029413342475891113
		3 15 0.60093152523040771 16 0.39862606773385778 17 0.00044240703573450446
		3 15 0.56821119785308838 16 0.43158449904876761 17 0.00020430309814400971
		3 15 0.28632968664169312 16 0.68281387723982334 17 0.030856436118483543
		3 15 0.064540326595306396 16 0.69733208417892456 17 0.23812758922576904
		3 15 0.19527924060821533 16 0.58093912899494171 17 0.22378163039684296
		3 15 7.3850154876708984e-05 16 0.49337929487228394 17 0.50654685497283936
		3 15 0.0024113655090332031 16 0.50852218270301819 17 0.48906645178794861
		3 15 0.011803686618804932 16 0.5166923999786377 17 0.47150391340255737
		1 17 1
		1 17 1
		1 17 1
		3 15 0.045768916606903076 16 0.5059012770652771 17 0.44832980632781982
		2 16 0.2539438009262085 17 0.7460561990737915
		3 15 0.055869042873382568 16 0.50036373734474182 17 0.44376721978187561
		2 16 0.28281188011169434 17 0.71718811988830566
		3 15 0.060809671878814697 16 0.49887877702713013 17 0.44031155109405518
		3 15 0.36255365610122681 16 0.47044689953327179 17 0.1669994443655014
		3 15 0.054267406463623047 16 0.51090648770332336 17 0.43482610583305359
		3 15 0.36059325933456421 16 0.47658294439315796 17 0.16282379627227783
		3 15 0.57263669371604919 16 0.42494654236361384 17 0.0024167639203369617
		3 15 0.572337806224823 16 0.42449894989840686 17 0.0031632438767701387
		3 15 0.7861921638250351 16 0.21380653765936586 17 1.2985155990463682e-06
		3 15 0.78430968523025513 16 0.21568746994239518 17 2.844827349690604e-06
		3 15 0.78546132147312164 16 0.21453314019890968 17 5.5383279686793685e-06
		2 15 0.98537179455161095 16 0.014628205448389053
		2 15 0.98336704075336456 16 0.016632959246635437
		2 15 0.98088007047772408 16 0.019119929522275925
		3 15 0.79252377152442932 16 0.20747045701637035 17 5.7714592003321741e-06
		2 15 0.98217270895838737 16 0.017827291041612625
		3 15 0.80834096670150757 16 0.1916588932363652 17 1.4006212722961209e-07
		2 15 0.98168632388114929 16 0.018313676118850708
		3 15 0.81045989692211151 16 0.1895400025683216 17 1.005095668915601e-07
		2 15 0.98032377846539021 16 0.019676221534609795
		3 15 0.80738385021686554 16 0.19261614226031565 17 7.5228188123332984e-09
		2 15 0.97271654009819031 16 0.027283459901809692
		2 15 0.79887236654758453 16 0.20112763345241547
		2 15 0.95173602923750877 16 0.048263970762491226
		2 15 0.7854686975479126 16 0.2145313024520874
		3 15 0.56937587261199951 16 0.43062411380725774 17 1.3580742752594688e-08
		2 15 0.77203337848186493 16 0.22796662151813507
		2 15 0.57620921730995178 16 0.42379078269004822
		2 15 0.33083409070968628 16 0.66916590929031372
		3 15 0.31505268812179565 16 0.6847741430538008 17 0.00017316882440354675
		2 15 0.035714983940124512 16 0.96428501605987549
		3 15 0.03148806095123291 16 0.96806582319550216 17 0.00044611585326492786
		2 16 0.99965842519304715 17 0.00034157480695284903
		1 16 0.97538620792329311;
	setAttr ".wl[6064:6323].w"
		1 17 0.024613792076706886
		3 15 0.01789546012878418 16 0.94560025632381439 17 0.036504283547401428
		2 16 0.99999980847243819 19 1.9152756181028963e-07
		2 16 0.99999928237826907 19 7.1762173092793091e-07
		2 16 0.99955892079742625 17 0.00044107920257374644
		2 16 0.999108117131982 17 0.00089188286801800132
		2 16 0.97428601235151291 17 0.025713987648487091
		2 16 0.97534620203077793 17 0.024653797969222069
		2 16 0.99999237119891404 19 7.6288010859570932e-06
		2 16 0.99992459452914773 19 7.5405470852274448e-05
		2 16 0.99701057304628193 17 0.0029894269537180662
		2 16 0.9924861378967762 17 0.0075138621032238007
		2 16 0.93339259177446365 17 0.066607408225536346
		2 16 0.95855092257261276 17 0.041449077427387238
		2 16 0.9996516939427238 19 0.00034830605727620423
		2 16 0.9985045874491334 19 0.0014954125508666039
		2 16 0.97940293326973915 17 0.020597066730260849
		2 16 0.96731423959136009 17 0.032685760408639908
		2 16 0.81811906397342682 17 0.18188093602657318
		2 16 0.87163423001766205 17 0.12836576998233795
		2 16 0.99727948848158121 19 0.0027205115184187889
		2 16 0.99829691334161907 19 0.0017030866583809257
		2 16 0.97546256892383099 17 0.024537431076169014
		2 16 0.98125354014337063 17 0.018746459856629372
		2 16 0.77963005006313324 17 0.22036994993686676
		2 16 0.7884090393781662 17 0.2115909606218338
		2 16 0.99956442142138258 19 0.00043557857861742377
		2 16 0.99974981936975382 19 0.00025018063024617732
		2 16 0.98287321627140045 17 0.017126783728599548
		2 16 0.9863448916003108 17 0.013655108399689198
		2 16 0.79684779047966003 17 0.20315220952033997
		2 16 0.7815822958946228 17 0.2184177041053772
		2 16 0.99979521334171295 19 0.00020478665828704834
		2 16 0.99994566074019531 19 5.4339259804692119e-05
		2 16 0.99321953998878598 17 0.0067804600112140179
		2 16 0.99679533997550607 17 0.0032046600244939327
		2 16 0.84518386423587799 17 0.15481613576412201
		2 16 0.82080037891864777 17 0.17919962108135223
		2 16 0.99998611576756957 19 1.3884232430427801e-05
		2 16 0.99999730005015408 19 2.6999498459190363e-06
		2 16 0.99771213438361883 17 0.0022878656163811684
		2 16 0.99920389632461593 17 0.00079610367538407445
		2 16 0.88446451723575592 17 0.11553548276424408
		2 16 0.86666664481163025 17 0.13333335518836975
		2 16 0.9999999415042744 19 5.8495725596685588e-08
		2 15 0.017475008964538574 16 0.98252499103546143
		3 15 0.0024667978286743164 16 0.99701402068603784 17 0.00051918148528784513
		3 15 0.14134377241134644 16 0.85848201671615243 17 0.00017421087250113487
		3 15 0.030243217945098877 16 0.85481932014226913 17 0.11493746191263199
		3 15 1.8298625946044922e-05 16 0.88657192140817642 17 0.11340977996587753
		2 15 0.18524926900863647 16 0.81475073099136353
		2 15 0.41843938827514648 16 0.58156061172485352
		2 15 0.59651768207550049 16 0.40348231792449951
		2 15 0.81273837387561798 16 0.18726162612438202
		2 15 0.82101443409919739 16 0.17898556590080261
		2 15 0.94422995299100876 16 0.055770047008991241
		2 15 0.96620895713567734 16 0.033791042864322662
		2 15 0.98796037957072258 16 0.01203962042927742
		2 15 0.82377800345420837 16 0.17622199654579163
		2 15 0.99612180143594742 16 0.0038781985640525818
		2 15 0.818595290184021 16 0.181404709815979
		2 15 0.9982945779338479 16 0.0017054220661520958
		2 15 0.81465978920459747 16 0.18534021079540253
		3 15 0.58583387732505798 16 0.41405957045935793 17 0.00010655221558408812
		3 15 0.35209602117538452 16 0.55356406420469284 17 0.094339914619922638
		2 15 0.80864168703556061 16 0.19135831296443939
		3 15 0.58327692747116089 16 0.41649004310602322 17 0.00023302942281588912
		3 15 0.35650306940078735 16 0.52247676998376846 17 0.12102016061544418
		3 15 0.02751457691192627 16 0.56267476081848145 17 0.40981066226959229
		3 15 0.0070488452911376953 16 0.59178236126899719 17 0.40116879343986511
		3 15 0.57946261763572693 16 0.42006496942485683 17 0.00047241293941624463
		3 15 0.3582310676574707 16 0.5017012357711792 17 0.1400676965713501
		3 15 0.036046147346496582 16 0.54516386985778809 17 0.41878998279571533
		3 15 0.045337021350860596 16 0.52502256631851196 17 0.42964041233062744
		2 16 0.29456359148025513 17 0.70543640851974487
		2 16 0.30050820112228394 17 0.69949179887771606
		2 16 0.30418163537979126 17 0.69581836462020874
		3 15 0.35914534330368042 16 0.48605680465698242 17 0.15479785203933716
		3 15 0.57532587647438049 16 0.4233067745808512 17 0.0013673489447683096
		3 15 0.79972372949123383 16 0.20027626300950541 17 7.4992607679291723e-09
		3 15 0.79150472581386566 16 0.2084949298505876 17 3.4433554674251354e-07
		2 15 0.99594679288566113 16 0.0040532071143388748
		2 15 0.99289517709985375 16 0.007104822900146246
		2 15 0.98886669147759676 16 0.01113330852240324
		2 15 0.99999649621008757 16 3.5037899124290561e-06
		2 15 0.99999189496884355 16 8.1050311564467847e-06
		2 15 0.99998468585181399 16 1.5314148186007515e-05
		1 15 1
		1 15 1
		1 15 1
		2 15 0.99997727895788557 16 2.2721042114426382e-05
		1 15 1
		2 15 0.99997360816996661 16 2.6391830033389851e-05
		1 15 1
		2 15 0.99998131385837041 16 1.8686141629586928e-05
		2 15 0.99999999980547671 16 1.9452327248981049e-10
		2 15 0.99997934695602453 16 2.0653043975471519e-05
		2 15 0.9999999840243774 16 1.5975622602582007e-08
		2 15 0.99994938411327894 16 5.0615886721061543e-05
		2 15 0.99999744844876659 16 2.5515512334095547e-06
		2 15 0.9992117477231659 16 0.00078825227683410048
		2 15 0.99991390957438853 16 8.609042561147362e-05
		2 15 0.99362323014065623 16 0.0063767698593437672
		2 15 0.99914535105926916 16 0.00085464894073083997
		2 15 0.98021754622459412 16 0.019782453775405884
		2 15 0.9212355837225914 16 0.0787644162774086
		2 15 0.99999998590546557 16 1.4094534428465977e-08
		2 15 0.99999933860141255 16 6.6139858745373203e-07
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 1 4.8875808715820312e-06 15 0.99999511241912842
		1 15 1
		2 1 0.0011436343193054199 15 0.99885636568069458
		2 1 7.0452690124511719e-05 15 0.99992954730987549
		2 1 0.013870060443878174 15 0.98612993955612183
		2 1 0.0063629746437072754 15 0.99363702535629272
		2 1 0.060599625110626221 15 0.93940037488937378
		2 1 0.047261357307434082 15 0.95273864269256592
		2 1 0.14383208751678467 15 0.85616791248321533
		2 1 0.11582446098327637 15 0.88417553901672363
		2 1 0.29021614789962769 15 0.70978385210037231
		2 1 0.25969409942626953 15 0.74030590057373047
		2 1 0.45839762687683105 15 0.54160237312316895
		2 1 0.43367058038711548 15 0.56632941961288452
		2 1 0.62574312090873718 15 0.37425687909126282
		2 1 0.61243557929992676 15 0.38756442070007324
		2 1 0.77948173880577087 15 0.22051826119422913
		2 1 0.77996248006820679 15 0.22003751993179321
		2 1 0.89931819587945938 15 0.10068180412054062
		2 1 0.90450632572174072 15 0.095493674278259277
		2 1 0.97623485140502453 15 0.023765148594975471
		2 1 0.97649581171572208 15 0.023504188284277916
		2 1 0.99927675887010992 15 0.00072324112989008427
		2 1 0.99887232354376465 15 0.0011276764562353492
		2 1 0.9999999286122403 15 7.1387759703611664e-08
		2 1 0.99999946806843809 15 5.3193156190900481e-07
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.80677379667758942 7 0.19322620332241058
		2 1 0.84580789506435394 7 0.15419210493564606
		2 1 0.84490780532360077 7 0.15509219467639923
		2 1 0.80251246690750122 7 0.19748753309249878
		2 1 0.49977809190750122 7 0.50022190809249878
		2 1 0.56279367208480835 7 0.43720632791519165
		2 1 0.35711759328842163 7 0.64288240671157837
		2 1 0.29746592044830322 7 0.70253407955169678
		2 1 0.76409062743186951 7 0.23590937256813049
		1 7 1
		1 7 1
		1 7 1
		2 7 0.99538936745375395 8 0.0046106325462460518
		2 7 0.99653776129707694 8 0.0034622387029230595
		3 1 3.2186508178710938e-05 7 0.74607780575752258 8 0.25389000773429871
		3 1 6.198883056640625e-06 7 0.73086640238761902 8 0.26912739872932434
		2 7 0.42665386199951172 8 0.57334613800048828
		3 1 0.00033599138259887695 7 0.39935201406478882 8 0.6003119945526123
		2 7 0.19088178873062134 8 0.80911821126937866
		2 7 0.15936309099197388 8 0.84063690900802612
		1 8 1
		1 8 1
		2 8 0.99027436412870884 9 0.0097256358712911606
		2 8 0.99733177432790399 9 0.002668225672096014
		2 8 0.40243780612945557 9 0.59756219387054443
		2 8 0.41195040941238403 9 0.58804959058761597
		2 8 0.19231748580932617 9 0.80768251419067383
		2 8 0.17216241359710693 9 0.82783758640289307
		2 8 0.010808825492858887 9 0.98919117450714111
		2 8 0.00091832876205444336 9 0.99908167123794556
		2 8 0.001339256763458252 9 0.99866074323654175
		2 8 9.3221664428710938e-05 9 0.99990677833557129
		2 8 1.8358230590820312e-05 9 0.99998164176940918
		2 8 0.00411224365234375 9 0.99588775634765625
		2 8 4.6074390411376953e-05 9 0.99995392560958862
		2 8 0.0075987577438354492 9 0.99240124225616455
		2 8 9.0003013610839844e-05 9 0.99990999698638916
		2 8 0.010256290435791016 9 0.98974370956420898
		2 8 0.00012534856796264648 9 0.99987465143203735
		2 8 0.04913020133972168 9 0.95086979866027832
		2 8 0.065584719181060791 9 0.93441528081893921
		2 8 0.073649883270263672 9 0.92635011672973633
		2 8 0.20716029405593872 9 0.79283970594406128
		2 8 0.20775610208511353 9 0.79224389791488647
		2 8 0.19695872068405151 9 0.80304127931594849
		2 8 0.067239105701446533 9 0.93276089429855347
		2 8 0.17193681001663208 9 0.82806318998336792
		2 8 0.044585645198822021 9 0.95541435480117798
		2 8 0.40874052047729492 9 0.59125947952270508
		2 8 0.40943390130996704 9 0.59056609869003296
		2 8 0.88034491986036301 9 0.11965508013963699
		2 8 0.88782789558172226 9 0.11217210441827774
		2 7 0.012587308883666992 8 0.98741269111633301
		2 7 0.008117973804473877 8 0.99188202619552612
		2 7 0.19264668226242065 8 0.80735331773757935
		2 7 0.15742343664169312 8 0.84257656335830688
		2 7 0.40307146310806274 8 0.59692853689193726
		2 7 0.36716979742050171 8 0.63283020257949829
		2 7 0.74253374338150024 8 0.25746625661849976
		2 7 0.72842523455619812 8 0.27157476544380188
		1 7 1
		1 7 1
		1 7 1
		2 1 0.0064959526062011719 7 0.99350404739379883
		3 1 0.38737963698804379 2 0.0029023382812738419 7 0.60971802473068237
		3 1 0.39437260292470455 2 0.0041461978107690811 7 0.60148119926452637
		3 1 0.39905194455059245 2 0.00082923955051228404 7 0.60011881589889526
		3 1 0.78261318663135171 2 0.0033183260820806026 7 0.21406848728656769
		1 7 1
		1 7 1
		2 1 0.43002623319625854 7 0.56997376680374146
		2 1 1.1324882507324219e-06 7 0.99999886751174927
		2 1 4.7087669372558594e-06 7 0.99999529123306274
		1 7 1
		1 7 1
		2 7 0.74208670854568481 8 0.25791329145431519
		2 7 0.7547028660774231 8 0.2452971339225769
		2 7 0.75749483704566956 8 0.24250516295433044
		3 1 0.00060766935348510742 7 0.7506219744682312 8 0.24877035617828369
		3 1 0.00035321712493896484 7 0.99908922257600352 8 0.00055756029905751348
		2 7 0.40740442276000977 8 0.59259557723999023
		2 7 0.41546076536178589 8 0.58453923463821411
		2 7 0.43020564317703247 8 0.56979435682296753
		2 7 0.19606369733810425 8 0.80393630266189575
		2 7 0.1981390118598938 8 0.8018609881401062
		2 7 0.00019168853759765628 8 0.99980831146240234
		2 7 0.00031989812850952148 8 0.99968010187149048
		2 8 0.9472249448299408 9 0.052775055170059204
		2 8 0.97139079496264458 9 0.028609205037355423
		2 8 0.43636071681976318 9 0.56363928318023682
		2 8 0.42537379264831543 9 0.57462620735168457
		2 8 0.20326864719390869 9 0.79673135280609131
		2 8 0.20270180702209473 9 0.79729819297790527
		2 8 0.028307318687438965 9 0.97169268131256104
		2 8 0.43701672554016113 9 0.56298327445983887
		2 8 0.92392107844352722 9 0.076078921556472778
		2 8 0.89898819476366043 9 0.10101180523633957
		1 8 0.42525392770767212;
	setAttr ".wl[6323:6694].w"
		1 9 0.57474607229232788
		2 7 0.0048279762268066406 8 0.99517202377319336
		2 7 0.010341882705688477 8 0.98965811729431152
		2 7 0.19730430841445923 8 0.80269569158554077
		2 7 0.20034909248352051 8 0.79965090751647949
		2 7 0.40988653898239136 8 0.59011346101760864
		2 1 0.9944676267914474 2 0.005532373208552599
		2 1 0.99207660742104053 2 0.007923392578959465
		2 1 0.98104611225426197 2 0.018953887745738029
		2 1 0.81947644054889679 2 0.18052355945110321
		2 1 0.96314960718154907 2 0.036850392818450928
		2 1 0.81910960376262665 2 0.18089039623737335
		2 1 0.59790045022964478 2 0.40209954977035522
		2 1 0.58620539307594299 2 0.41379460692405701
		2 1 0.35889959335327148 2 0.64110040664672852
		2 1 0.35056793689727783 2 0.64943206310272217
		2 1 0.33257097005844116 2 0.66742902994155884
		2 1 0.1385878324508667 2 0.8614121675491333
		2 1 0.14601916074752808 2 0.85398083925247192
		2 1 0.11427313089370728 2 0.88572686910629272
		2 1 0.28854846954345703 2 0.71145153045654297
		2 1 0.059757053852081299 2 0.9402429461479187
		2 1 0.22991496324539185 2 0.77008503675460815
		2 1 0.010787844657897949 2 0.98921215534210205
		1 2 1
		2 1 5.3644180297851562e-05 2 0.99994635581970215
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.82005690038204193 22 0.17994309961795807
		2 2 0.79354974627494812 22 0.20645025372505188
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 2 0.0023294614067881653 22 0.99767053859321186
		2 2 0.0011507170216915974 22 0.99884928297830844
		2 2 0.030826559675252118 22 0.96917344032474784
		2 2 0.027212736721534278 22 0.97278726327846576
		2 2 0.11532321994151171 22 0.88467678005848827
		2 2 0.10253881562960414 22 0.8974611843703959
		2 2 0.25527590828004454 22 0.74472409171995546
		2 2 0.24339389546204032 22 0.75660610453795973
		2 2 0.57505568861961365 22 0.42494431138038635
		2 2 0.56994274258613586 22 0.43005725741386414
		2 2 0.78547118604183197 22 0.21452881395816803
		2 2 0.79950954020023346 22 0.20049045979976654
		2 2 0.93345075100660324 22 0.066549248993396759
		2 2 0.94740618020296097 22 0.052593819797039032
		2 2 0.99497820064425468 22 0.0050217993557453156
		2 2 0.99661166896112263 22 0.003388331038877368
		2 2 0.99997948000418546 22 2.0519995814538561e-05
		2 2 0.99998621749091399 22 1.3782509086013306e-05
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.0073712468147277832 2 0.99262875318527222
		2 1 0.0022054910659790039 2 0.997794508934021
		2 1 0.15419107675552368 2 0.84580892324447632
		2 1 0.11080199480056763 2 0.88919800519943237
		2 1 0.36069214344024658 2 0.63930785655975342
		2 1 0.29799175262451172 2 0.70200824737548828
		2 1 0.66411092877388 2 0.33588907122612
		2 1 0.63416823744773865 2 0.36583176255226135
		2 1 0.94017179682850838 2 0.059828203171491623
		2 1 0.9612695686519146 2 0.038730431348085403
		2 1 0.99999701255114815 2 2.987448851854424e-06
		2 1 0.99998932778362359 2 1.0672216376406141e-05
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99999999071804524 15 9.2819547603539831e-09
		2 1 0.99889791628811508 15 0.0011020837118849158
		2 1 0.99857765901833773 15 0.0014223409816622734
		2 1 0.90873184055089951 15 0.091268159449100494
		2 1 0.90354647487401962 15 0.096453525125980377
		2 1 0.73608577251434326 15 0.26391422748565674
		2 1 0.71843698620796204 15 0.28156301379203796
		2 1 0.52661389112472534 15 0.47338610887527466
		2 1 0.50468814373016357 15 0.49531185626983643
		2 1 0.2985159158706665 15 0.7014840841293335
		2 1 0.27805137634277344 15 0.72194862365722656
		2 1 0.11681956052780151 15 0.88318043947219849
		2 1 0.10790747404098511 15 0.89209252595901489
		2 1 0.038278281688690186 15 0.96172171831130981
		2 1 0.030151784420013428 15 0.96984821557998657
		2 1 0.0057554244995117188 15 0.99424457550048828
		2 1 0.0013782382011413574 15 0.99862176179885864
		2 1 0.00017970800399780273 15 0.9998202919960022
		2 1 4.4107437133789062e-06 15 0.99999558925628662
		2 1 3.5762786865234375e-07 15 0.99999964237213135
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 15 0.99999782450004204 16 2.1754999579570722e-06
		2 15 0.99883812002371997 16 0.0011618799762800336
		2 15 0.99637881922535598 16 0.0036211807746440172
		1 15 1
		2 15 0.99983955759671517 16 0.00016044240328483284
		1 15 1
		2 15 0.99998713861350552 16 1.2861386494478211e-05
		1 15 1
		2 15 0.99999868179986606 16 1.3182001339373528e-06
		1 15 1
		2 15 0.99999955656403472 16 4.4343596528051421e-07
		2 15 0.99766324087977409 16 0.0023367591202259064
		2 15 0.99999882248403082 16 1.1775159691751469e-06
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 1 0.00032526254653930664 15 0.99967473745346069
		2 1 8.9585781097412109e-05 15 0.99991041421890259
		2 1 0.0093540549278259277 15 0.99064594507217407
		2 1 0.005203545093536377 15 0.99479645490646362
		2 1 0.032148122787475586 15 0.96785187721252441
		2 1 0.023795545101165771 15 0.97620445489883423
		2 1 0.081525862216949463 15 0.91847413778305054
		2 1 0.069197773933410645 15 0.93080222606658936
		2 1 0.18572467565536499 15 0.81427532434463501
		2 1 0.16342395544052124 15 0.83657604455947876
		2 1 0.34521770477294922 15 0.65478229522705078
		2 1 0.31282305717468262 15 0.68717694282531738
		2 1 0.5207543671131134 15 0.4792456328868866
		2 1 0.48702913522720337 15 0.51297086477279663
		2 1 0.67265909910202026 15 0.32734090089797974
		2 1 0.64592313766479492 15 0.35407686233520508
		2 1 0.81918945908546448 15 0.18081054091453552
		2 1 0.79391360282897949 15 0.20608639717102051
		2 1 0.92849531769752502 15 0.071504682302474976
		2 1 0.90837724506855011 15 0.09162275493144989
		2 1 0.99096216913312674 15 0.0090378308668732643
		2 1 0.98161211609840393 15 0.018387883901596069
		2 1 0.9999577514900011 15 4.2248509998898953e-05
		2 1 0.99976414465345442 15 0.00023585534654557705
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.98675328586250544 2 0.013246714137494564
		2 1 0.99692992563359439 2 0.0030700743664056063
		1 1 1
		2 1 0.94437085464596748 2 0.055629145354032516
		2 1 0.91976746916770935 2 0.080232530832290649
		2 1 0.81495358049869537 2 0.18504641950130463
		2 1 0.81750325858592987 2 0.18249674141407013
		2 1 0.61457163095474243 2 0.38542836904525757
		2 1 0.61007502675056458 2 0.38992497324943542
		2 1 0.38203251361846924 2 0.61796748638153076
		2 1 0.37322056293487549 2 0.62677943706512451
		2 1 0.17363590002059937 2 0.82636409997940063
		2 1 0.15838569402694702 2 0.84161430597305298
		2 1 0.14017093181610107 2 0.85982906818389893
		2 1 0.0016168355941772461 2 0.99838316440582275
		2 1 0.00065594911575317383 2 0.99934405088424683
		2 1 0.0061832070350646973 2 0.9938167929649353
		1 2 1
		2 1 5.9604644775390625e-08 2 0.99999994039535522
		2 1 9.2208385467529297e-05 2 0.99990779161453247
		2 1 0.022229492664337158 2 0.97777050733566284
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1;
	setAttr ".wl[6695:7045].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99999998347821872 22 1.6521781276424008e-08
		2 2 0.99999450165432791 22 5.4983456720947288e-06
		2 2 0.99967283094883896 22 0.0003271690511610359
		2 2 0.99999992681210159 22 7.3187898408377805e-08
		2 2 0.99999468967462235 22 5.3103253776498605e-06
		2 2 0.99938273406587541 22 0.00061726593412458897
		2 2 0.97824914008378983 22 0.021750859916210175
		2 2 0.99999999698351649 22 3.0164835074231178e-09
		2 2 0.99999926482553292 22 7.3517446708137868e-07
		2 2 0.99960257307975553 22 0.00039742692024447024
		2 2 0.99405916733667254 22 0.0059408326633274555
		2 2 0.91912504285573959 22 0.080874957144260406
		1 2 1
		2 2 0.99999979914620951 22 2.0085379048850882e-07
		2 2 0.99998579785278707 22 1.420214721292723e-05
		2 2 0.99998520974895655 22 1.4790251043450553e-05
		2 2 0.99147325195372105 22 0.0085267480462789536
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99999999631043535 22 3.6895646537971061e-09
		2 2 0.99981189526442904 22 0.00018810473557095975
		2 2 0.99499415885657072 22 0.0050058411434292793
		2 2 0.97895670682191849 22 0.021043293178081512
		2 2 0.88861328363418579 22 0.11138671636581421
		2 2 0.84061408042907715 22 0.15938591957092285
		2 2 0.96900571510195732 22 0.030994284898042679
		2 2 0.80861416459083557 22 0.19138583540916443
		2 2 0.56167829036712646 22 0.43832170963287354
		2 2 0.78438438475131989 22 0.21561561524868011
		2 2 0.55029737949371338 22 0.44970262050628662
		2 2 0.2187622738524716 22 0.7812377261475284
		2 2 0.22605130587800118 22 0.77394869412199885
		2 2 0.062780933284392659 22 0.93721906671560729
		2 2 0.073087416200209879 22 0.92691258379979014
		2 2 0.10130828779250485 22 0.89869171220749511
		2 2 0.008607055646848558 22 0.9913929443531514
		2 2 0.021894551103605303 22 0.97810544889639472
		2 2 0.034041216265550102 22 0.96595878373444988
		2 2 0.12719058125475205 22 0.87280941874524798
		2 2 0.045369982855522517 22 0.95463001714447748
		2 2 0.15082427389470446 22 0.84917572610529557
		2 2 0.056100339570176301 22 0.94389966042982365
		2 2 0.18111571125525039 22 0.81888428874474961
		2 2 0.064531594327235653 22 0.93546840567276435
		2 2 0.21487801241737983 22 0.7851219875826202
		2 2 0.067205775454706948 22 0.93279422454529304
		2 2 0.1786844074537344 22 0.82131559254626563
		2 2 0.24425398607381174 22 0.75574601392618823
		2 2 0.92870350927114487 22 0.071296490728855133
		2 2 0.99488767329603434 22 0.0051123267039656639
		1 2 1
		2 2 0.82070536911487579 22 0.17929463088512421
		2 2 0.99892570462543517 22 0.0010742953745648265
		1 2 1
		2 2 0.97085357271134853 22 0.029146427288651466
		1 2 1
		1 2 1
		2 2 0.72298038005828857 22 0.27701961994171143
		2 2 0.99905882350867614 22 0.0009411764913238585
		2 2 0.76059055328369141 22 0.23940944671630859
		2 2 0.99970965011743829 22 0.00029034988256171346
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.0042754234169060362 22 0.99572457658309399
		2 2 0.0050147595650595249 22 0.99498524043494052
		2 2 1.5790597732503081e-05 22 0.99998420940226751
		2 2 4.2497425168293407e-07 22 0.99999957502574832
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 2 1.3636618729898448e-07 22 0.99999986363381266
		2 2 0.00016210280995435181 22 0.99983789719004568
		2 2 4.8604164292413865e-05 22 0.99995139583570758
		1 22 1
		2 2 7.288886920060695e-07 22 0.99999927111130804
		2 2 0.00084865861816738812 22 0.99915134138183259
		2 2 1.9640933191329888e-06 22 0.9999980359066809
		2 2 0.0014807632238552403 22 0.99851923677614474
		2 2 3.5796586896260664e-06 22 0.99999642034131042
		2 2 0.0021363284706538473 22 0.99786367152934619
		2 2 6.1065397831400814e-06 22 0.99999389346021683
		2 2 0.0031121878155217506 22 0.99688781218447819
		1 22 1
		1 22 1
		1 22 1
		2 2 0.0042969860113458288 22 0.99570301398865413
		2 2 0.0071732459474382537 22 0.99282675405256171
		2 2 4.1024009181316947e-05 22 0.99995897599081873
		2 2 0.018027489477263386 22 0.9819725105227366
		2 2 0.00043324963664640148 22 0.99956675036335363
		1 22 1
		2 2 0.0017771918982275206 22 0.99822280810177244
		1 22 1
		1 22 1
		2 2 0.028202089018522645 22 0.97179791098147739
		2 2 0.11260511260989202 22 0.88739488739010797
		2 2 0.097154951593119071 22 0.90284504840688096
		2 2 0.24507455155759852 22 0.7549254484424015
		2 2 0.25439552589335285 22 0.74560447410664721
		2 2 0.079209725659354135 22 0.92079027434064586
		2 2 0.23117253960805326 22 0.76882746039194672
		2 2 0.55617988109588623 22 0.44382011890411377
		2 2 0.56433200836181641 22 0.43566799163818359
		2 2 0.77662444114685059 22 0.22337555885314941
		2 2 0.77979534864425659 22 0.22020465135574341
		2 2 0.57125484943389893 22 0.42874515056610107
		2 2 0.776603102684021 22 0.223396897315979
		2 2 0.94258261099457741 22 0.057417389005422592
		2 2 0.93468128144741058 22 0.065318718552589417
		2 2 0.95164889842271805 22 0.048351101577281952
		3 2 0.99881116103354373 12 9.3011450985613919e-08 22 0.0011887459550052881
		2 2 0.99787921505048871 22 0.0021207849495112896
		2 2 0.99942822125740349 22 0.00057177874259650707
		2 2 0.99999990510031012 22 9.4899689884186955e-08
		3 2 0.99999779500282671 12 1.8357541193836369e-06 22 3.6924305391039525e-07
		1 2 1
		1 2 1
		2 2 0.9999999642557249 12 3.5744275095339617e-08
		2 2 0.99999994520197077 12 5.4798029225366918e-08
		1 2 1
		2 1 0.00040417909622192377 2 0.99959582090377808
		2 1 0.17687022686004639 2 0.82312977313995361
		2 1 2.9146671295166016e-05 2 0.99997085332870483
		3 1 0.41004002094268799 2 0.58995995359422082 12 2.5463091191113563e-08
		3 1 0.44396895170211792 2 0.55558728752657771 12 0.00044376077130436897
		2 1 0.39561939239501953 2 0.60438060760498047
		2 1 0.61793828010559082 2 0.38206171989440918
		2 1 0.62639102339744568 2 0.37360897660255432
		2 1 0.7884012758731842 2 0.2115987241268158
		2 1 0.80654501914978027 2 0.19345498085021973
		3 1 0.63874605298042297 2 0.36125393853187937 12 8.4876976558234674e-09
		2 1 0.79472017288208008 2 0.20527982711791992
		2 1 0.89041610807180405 2 0.10958389192819595
		2 1 0.89512089639902115 2 0.10487910360097885
		2 1 0.98340755887329578 2 0.016592441126704216
		2 1 0.98185442015528679 2 0.018145579844713211
		2 1 0.92348957061767578 2 0.076510429382324219
		2 1 0.97291427291929722 2 0.027085727080702782
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99999996662375779 2 3.3376242214444574e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99998953092108422 15 1.0469078915775754e-05
		2 1 0.99998918061555742 15 1.0819384442584123e-05
		1 1 1
		2 1 0.99999720396385783 15 2.7960361421719426e-06
		2 1 0.99358281027525663 15 0.0064171897247433662
		2 1 0.99467472080141306 15 0.0053252791985869408
		2 1 0.94538535550236702 15 0.05461464449763298
		2 1 0.94972644746303558 15 0.050273552536964417
		2 1 0.99558373400941491 15 0.0044162659905850887
		2 1 0.9368276447057724 15 0.0631723552942276
		2 1 0.83778266608715057 15 0.16221733391284943
		2 1 0.85499131679534912 15 0.14500868320465088
		2 1 0.72855189442634583 15 0.27144810557365417
		2 1 0.75166109204292297 15 0.24833890795707703
		2 1 0.8706987202167511 15 0.1293012797832489
		2 1 0.70093366503715515 15 0.29906633496284485
		2 1 0.55509787797927856 15 0.44490212202072144
		2 1 0.58734238147735596 15 0.41265761852264404
		2 1 0.41471803188323975 15 0.58528196811676025
		2 1 0.44426560401916504 15 0.55573439598083496
		2 1 0.61231637001037598 15 0.38768362998962402
		2 1 0.38113951683044434 15 0.61886048316955566
		2 1 0.21411073207855225 15 0.78588926792144775
		2 1 0.24662351608276367 15 0.75337648391723633
		2 1 0.1197357177734375 15 0.8802642822265625
		2 1 0.13212156295776367 15 0.86787843704223633
		2 1 0.27645856142044067 15 0.72354143857955933
		2 1 0.09986567497253418 15 0.90013432502746582
		1 1 0.041396915912628174;
	setAttr ".wl[7045:7366].w"
		1 15 0.95860308408737183
		2 1 0.05093914270401001 15 0.94906085729598999
		2 1 0.011309504508972168 15 0.98869049549102783
		2 1 0.013146460056304932 15 0.98685353994369507
		2 1 0.057750284671783447 15 0.94224971532821655
		2 1 0.011610269546508789 15 0.98838973045349121
		2 1 0.00036740303039550781 15 0.99963259696960449
		2 1 0.00026953220367431641 15 0.99973046779632568
		1 15 1
		1 15 1
		2 1 0.00020378828048706055 15 0.99979621171951294
		1 15 1
		1 15 1
		2 1 0.00012850761413574219 15 0.99987149238586426
		2 1 0.012890040874481201 15 0.9871099591255188
		2 1 7.6532363891601562e-05 15 0.9999234676361084
		2 1 0.0094779729843139648 15 0.99052202701568604
		2 1 0.066643774509429932 15 0.93335622549057007
		2 1 0.062243640422821045 15 0.93775635957717896
		2 1 0.15175372362136841 15 0.84824627637863159
		2 1 0.14268779754638672 15 0.85731220245361328
		2 1 0.30939537286758423 15 0.69060462713241577
		2 1 0.29779946804046631 15 0.70220053195953369
		2 1 0.48127371072769165 15 0.51872628927230835
		2 1 0.46697551012039185 15 0.53302448987960815
		2 1 0.64549389481544495 15 0.35450610518455505
		2 1 0.63103130459785461 15 0.36896869540214539
		2 1 0.78935188055038452 15 0.21064811944961548
		2 1 0.7741420567035675 15 0.2258579432964325
		2 1 0.89395827800035477 15 0.10604172199964523
		2 1 0.8836696445941925 15 0.1163303554058075
		2 1 0.96504869684576988 15 0.034951303154230118
		2 1 0.95901082828640938 15 0.040989171713590622
		2 1 0.99836692109238356 15 0.0016330789076164365
		2 1 0.99770775088109076 15 0.0022922491189092398
		1 1 1
		2 1 0.99999996507195377 15 3.492804623306256e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99018880538642406 2 0.0098111946135759354
		2 1 0.98166756704449654 2 0.018332432955503464
		2 1 0.93135674297809601 2 0.068643257021903992
		2 1 0.91726204752922058 2 0.082737952470779419
		2 1 0.83245205879211426 2 0.16754794120788574
		2 1 0.81453824043273926 2 0.18546175956726074
		2 1 0.68508321046829224 2 0.31491678953170776
		3 1 0.66487953066825867 2 0.3351199211993503 12 5.4813239103168598e-07
		2 1 0.50491997599601746 2 0.49508002400398254
		3 1 0.49391657114028931 2 0.50274430913850665 12 0.0033391197212040424
		2 1 0.49803799390792847 2 0.50196200609207153
		2 1 0.26662611961364746 2 0.73337388038635254
		3 1 0.033591508865356445 2 0.96493042283691466 12 0.0014780682977288961
		2 1 0.23833447694778442 2 0.76166552305221558
		2 1 0.019352316856384277 2 0.98064768314361572
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99924129043938592 12 0.00075870956061407924
		2 2 0.99999854897782825 12 1.4510221717500826e-06
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99998969987609598 22 1.03001239040168e-05
		2 2 0.99999805321817803 22 1.9467818219709443e-06
		2 2 0.99599037598818541 22 0.0040096240118145943
		2 2 0.99997818456176901 22 2.1815438230987638e-05
		2 2 0.99432538449764252 22 0.0056746155023574829
		2 2 0.93129512667655945 22 0.068704873323440552
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.0046440362930297852 2 0.99535596370697021
		2 1 0.0027988553047180176 2 0.99720114469528198
		2 1 0.18981689214706421 2 0.81018310785293579
		2 1 0.17338353395462036 2 0.82661646604537964
		2 1 0.0047990083694458008 2 0.9952009916305542
		2 1 0.21266508102416992 2 0.78733491897583008
		2 1 0.43993359804153442 2 0.56006640195846558
		2 1 0.41800433397293091 2 0.58199566602706909
		2 1 0.46858066320419312 2 0.53141933679580688
		2 1 0.70725098252296448 2 0.29274901747703552
		2 1 0.69729188084602356 2 0.30270811915397644
		2 1 0.70191377401351929 2 0.29808622598648071
		2 1 0.8633071631193161 2 0.1366928368806839
		2 1 0.90024824440479279 2 0.099751755595207214
		2 1 0.98750434163957834 2 0.012495658360421658
		1 1 1
		2 1 0.90653349459171295 2 0.093466505408287048
		2 1 0.96232718229293823 2 0.037672817707061768
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99999980546212441 15 1.945378755863203e-07
		2 1 0.99999574906587441 15 4.2509341255936306e-06
		2 1 0.99957271601306275 15 0.00042728398693725467
		2 1 0.99995543103068485 15 4.4568969315150753e-05
		1 1 1
		2 1 0.99898658262100071 15 0.0010134173789992929
		2 1 0.97345253825187683 15 0.026547461748123169
		2 1 0.98097642883658409 15 0.019023571163415909
		2 1 0.91364698112010956 15 0.086353018879890442
		2 1 0.92575915902853012 15 0.074240840971469879
		2 1 0.99127643182873726 15 0.0087235681712627411
		2 1 0.90234589576721191 15 0.097654104232788086
		2 1 0.79882641136646271 15 0.20117358863353729
		2 1 0.80308353900909424 15 0.19691646099090576
		2 1 0.64717358350753784 15 0.35282641649246216
		2 1 0.63868898153305054 15 0.36131101846694946
		2 1 0.80318368971347809 15 0.19681631028652191
		2 1 0.65045264363288879 15 0.34954735636711121
		2 1 0.48606681823730469 15 0.51393318176269531
		2 1 0.48032748699188232 15 0.51967251300811768
		2 1 0.30372202396392822 15 0.69627797603607178
		2 1 0.28068983554840088 15 0.71931016445159912
		2 1 0.46077609062194824 15 0.53922390937805176
		2 1 0.31149923801422119 15 0.68850076198577881
		2 1 0.15260761976242065 15 0.84739238023757935
		2 1 0.14374428987503052 15 0.85625571012496948
		2 1 0.060950279235839844 15 0.93904972076416016
		2 1 0.049032807350158691 15 0.95096719264984131
		2 1 0.12284040451049805 15 0.87715959548950195
		2 1 0.066143035888671875 15 0.93385696411132812
		2 1 0.0057522058486938477 15 0.99424779415130615
		2 1 0.0036161541938781738 15 0.99638384580612183
		1 15 1
		1 15 1
		2 1 0.0021496415138244629 15 0.99785035848617554
		2 1 8.2850456237792969e-06 15 0.99999171495437622
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 1 3.0994415283203125e-06 15 0.99999690055847168
		1 15 1
		2 1 1.3768672943115234e-05 15 0.99998623132705688
		2 1 0.0028565526008605957 15 0.9971434473991394
		2 1 0.0020548105239868164 15 0.99794518947601318
		2 1 0.028019726276397705 15 0.97198027372360229
		2 1 0.036796391010284424 15 0.96320360898971558
		2 1 0.074482738971710205 15 0.92551726102828979
		2 1 0.097401142120361328 15 0.90259885787963867
		2 1 0.20156419277191162 15 0.79843580722808838
		2 1 0.24077558517456055 15 0.75922441482543945
		2 1 0.39279800653457642 15 0.60720199346542358
		2 1 0.42989939451217651 15 0.57010060548782349
		2 1 0.59816211462020874 15 0.40183788537979126
		2 1 0.62167701125144958 15 0.37832298874855042
		2 1 0.78773538768291473 15 0.21226461231708527
		2 1 0.79761509597301483 15 0.20238490402698517
		2 1 0.93124403059482574 15 0.068755969405174255
		2 1 0.93362563848495483 15 0.066374361515045166
		2 1 0.99882764264475554 15 0.0011723573552444577
		2 1 0.99902372213546187 15 0.00097627786453813314
		1 1 1
		2 1 0.99999983057749375 15 1.6942250624651933e-07
		2 1 0.99999997341498492 15 2.6585015078239849e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99362397426739335 2 0.0063760257326066494
		2 1 0.96932541392743587 2 0.030674586072564125
		2 1 0.90166659653186798 2 0.098333403468132019
		2 1 0.68564790487289429 2 0.31435209512710571
		2 1 0.68756654858589172 2 0.31243345141410828
		2 1 0.38588225841522217 2 0.61411774158477783
		1 1 1
		1 1 1
		2 1 0.99999947517954979 15 5.2482045020951773e-07
		1 1 1
		1 1 1
		2 1 0.99920918641146272 15 0.00079081358853727579
		2 1 0.99861115554813296 15 0.001388844451867044
		2 1 0.92539653182029724 15 0.074603468179702759
		2 1 0.91680099815130234 15 0.083199001848697662
		2 1 0.75512459874153137 15 0.24487540125846863
		2 1 0.77198225259780884 15 0.22801774740219116
		2 1 0.57309496402740479 15 0.42690503597259521
		2 1 0.54866510629653931 15 0.45133489370346069
		2 1 0.32048577070236206 15 0.67951422929763794
		2 1 0.35452175140380859 15 0.64547824859619141
		2 1 0.16056084632873535 15 0.83943915367126465
		2 1 0.13233369588851929 15 0.86766630411148071
		2 1 0.045613408088684082 15 0.95438659191131592
		2 1 0.056795299053192139 15 0.94320470094680786
		2 1 0.02203071117401123 15 0.97796928882598877
		2 1 0.013982534408569336 15 0.98601746559143066
		2 1 0.0012252330780029297 15 0.99877476692199707
		2 1 0.0029535889625549316 15 0.99704641103744507
		2 1 2.1398067474365234e-05 15 0.99997860193252563
		2 1 5.3048133850097656e-06 15 0.99999469518661499
		1 15 1
		2 1 5.9604644775390625e-08 15 0.99999994039535522
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.999999999880549 22 1.1945100464316738e-10
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 17 0.99442646326497197 18 0.0055735367350280285
		2 17 0.99693229072727263 18 0.0030677092727273703
		2 17 0.99757457617670298 18 0.0024254238232970238
		2 16 0.30822402238845825 17 0.69177597761154175
		2 17 0.99823852360714227 18 0.0017614763928577304
		2 16 0.32561880350112915 17 0.67438119649887085
		3 15 0.005414128303527832 16 0.61664280295372009 17 0.37794306874275208
		2 16 0.35597491264343262 17 0.64402508735656738
		3 15 0.00076806545257568359 16 0.63573887944221497 17 0.36349305510520935
		2 16 0.40192544460296631 17 0.59807455539703369
		3 15 6.0915946960449219e-05 16 0.65696385502815247 17 0.34297522902488708
		2 16 0.44176387786865234 17 0.55823612213134766
		2 16 0.6746080219745636 17 0.3253919780254364
		2 16 0.44387072324752808 17 0.55612927675247192
		2 16 0.67696559429168701 17 0.32303440570831299
		2 16 0.41784948110580444 17 0.58215051889419556
		2 16 0.66342616081237793 17 0.33657383918762207
		1 16 0.38667058944702148;
	setAttr ".wl[7366:7650].w"
		1 17 0.61332941055297852
		2 16 0.63819104433059692 17 0.36180895566940308
		2 16 0.34442973136901855 17 0.65557026863098145
		2 16 0.60686469078063965 17 0.39313530921936035
		2 16 0.31332516670227051 17 0.68667483329772949
		2 16 0.57249537110328674 17 0.42750462889671326
		2 16 0.2964509129524231 17 0.7035490870475769
		2 16 0.54416325688362122 17 0.45583674311637878
		2 16 0.29952520132064819 17 0.70047479867935181
		2 16 0.54077437520027161 17 0.45922562479972839
		2 16 0.32616209983825684 17 0.67383790016174316
		2 16 0.55822715163230896 17 0.44177284836769104
		2 16 0.34844869375228882 17 0.65155130624771118
		2 16 0.58580991625785828 17 0.41419008374214172
		2 16 0.38433533906936646 17 0.61566466093063354
		2 16 0.62956124544143677 17 0.37043875455856323
		2 16 0.42380040884017944 17 0.57619959115982056
		2 16 0.67774197459220886 17 0.32225802540779114
		2 16 0.44916802644729614 17 0.55083197355270386
		2 16 0.70866674184799194 17 0.29133325815200806
		2 16 0.45388466119766235 17 0.54611533880233765
		2 16 0.71924376487731934 17 0.28075623512268066
		2 16 0.45456206798553467 17 0.54543793201446533
		2 16 0.72259244322776794 17 0.27740755677223206
		2 16 0.46384763717651367 17 0.53615236282348633
		2 16 0.73155739903450012 17 0.26844260096549988
		2 16 0.47654753923416138 17 0.52345246076583862
		3 15 8.8632106781005859e-05 16 0.74508446455001831 17 0.25482690334320068
		1 17 1
		1 17 1
		1 17 1
		2 17 0.94588249549269676 18 0.054117504507303238
		2 17 0.95896882936358452 18 0.041031170636415482
		2 17 0.97291766665875912 18 0.027082333341240883
		2 17 0.77810811996459961 18 0.22189188003540039
		2 17 0.774608314037323 18 0.225391685962677
		2 17 0.77181136608123779 18 0.22818863391876221
		2 17 0.9794824980199337 18 0.020517501980066299
		2 17 0.76763537526130676 18 0.23236462473869324
		2 17 0.98280004039406776 18 0.017199959605932236
		2 17 0.764400914311409 18 0.235599085688591
		2 17 0.98091947473585606 18 0.019080525264143944
		2 17 0.77754241228103638 18 0.22245758771896362
		2 17 0.98535762913525105 18 0.014642370864748955
		2 17 0.79507556557655334 18 0.20492443442344666
		2 17 0.99069233238697052 18 0.00930766761302948
		2 16 0.29093879461288452 17 0.70906120538711548
		2 17 0.99274993548169732 18 0.0072500645183026791
		2 17 0.80352388322353363 18 0.19647611677646637
		2 17 0.80588735640048981 18 0.19411264359951019
		2 17 0.51262292265892029 18 0.48737707734107971
		3 16 3.5762786865234375e-07 17 0.52572020888328552 18 0.47427943348884583
		2 17 0.5422077476978302 18 0.4577922523021698
		2 17 0.8074336051940918 18 0.1925663948059082
		2 17 0.54653668403625488 18 0.45346331596374512
		2 17 0.80735641717910767 18 0.19264358282089233
		2 17 0.5443929135799408 18 0.4556070864200592
		2 17 0.80369263887405396 18 0.19630736112594604
		2 17 0.54201096296310425 18 0.45798903703689575
		2 17 0.80564527213573456 18 0.19435472786426544
		2 17 0.99901252612471581 18 0.00098747387528419495
		2 17 0.81301093101501465 18 0.18698906898498535
		2 17 0.99965803374652751 18 0.0003419662534724921
		2 17 0.82402335107326508 18 0.17597664892673492
		2 17 0.99973156640771776 18 0.00026843359228223562
		2 17 0.83356717228889465 18 0.16643282771110535
		2 17 0.99900949548464268 18 0.00099050451535731554
		2 17 0.84298856556415558 18 0.15701143443584442
		2 17 0.99914671189617366 18 0.00085328810382634401
		2 17 0.8476322740316391 18 0.1523677259683609
		2 17 0.99875893536955118 18 0.0012410646304488182
		2 17 0.84873609244823456 18 0.15126390755176544
		2 17 0.99836215132381767 18 0.0016378486761823297
		2 17 0.85434071719646454 18 0.14565928280353546
		2 17 0.99870234064292163 18 0.0012976593570783734
		2 17 0.87024475634098053 18 0.12975524365901947
		2 17 0.99964534121681936 18 0.00035465878318063915
		2 17 0.88912735879421234 18 0.11087264120578766
		2 17 0.99987497566326056 18 0.00012502433673944324
		2 17 0.90554453432559967 18 0.09445546567440033
		2 17 0.99999264174994096 18 7.3582500590418931e-06
		2 17 0.92190998047590256 18 0.078090019524097443
		1 17 1
		2 17 0.92470614612102509 18 0.075293853878974915
		1 17 1
		2 17 0.92836365848779678 18 0.071636341512203217
		1 17 1
		2 17 0.93284577876329422 18 0.06715422123670578
		1 17 1
		2 17 0.93848637118935585 18 0.06151362881064415
		2 17 0.99999054050476843 18 9.4594952315674163e-06
		2 17 0.94474798068404198 18 0.055252019315958023
		1 17 1
		2 17 0.94404474645853043 18 0.055955253541469574
		2 17 0.76943230628967285 18 0.23056769371032715
		2 17 0.77322018146514893 18 0.22677981853485107
		2 17 0.77873833477497101 18 0.22126166522502899
		2 17 0.52308320999145508 18 0.47691679000854492
		2 17 0.52459782361984253 18 0.47540217638015747
		2 17 0.52149993181228638 18 0.47850006818771362
		2 17 0.26112693548202515 18 0.73887306451797485
		2 17 0.25490403175354004 18 0.74509596824645996
		2 17 0.24141794443130493 18 0.75858205556869507
		2 17 0.51771506667137146 18 0.48228493332862854
		2 17 0.22846341133117676 18 0.77153658866882324
		2 17 0.51685905456542969 18 0.48314094543457031
		2 17 0.21148681640625 18 0.78851318359375
		2 17 0.51137632131576538 18 0.48862367868423462
		2 17 0.20093750953674316 18 0.79906249046325684
		2 17 0.50044038891792297 18 0.49955961108207703
		2 17 0.19418710470199585 18 0.80581289529800415
		3 16 9.5367431640625e-07 17 0.49277406930923462 18 0.50722497701644897
		3 16 5.9604644775390625e-08 17 0.19600367546081543 18 0.80399626493453979
		3 16 7.8856945037841797e-05 17 0.50046375393867493 18 0.49945738911628723
		2 17 0.19844281673431396 18 0.80155718326568604
		2 17 0.02899700403213501 18 0.97100299596786499
		2 17 0.022628188133239746 18 0.97737181186676025
		2 17 0.020580172538757324 18 0.97941982746124268
		2 17 0.20345389842987061 18 0.79654610157012939
		2 17 0.025952816009521484 18 0.97404718399047852
		2 17 0.22431778907775879 18 0.77568221092224121
		2 17 0.035806357860565186 18 0.96419364213943481
		2 17 0.2499503493309021 18 0.7500496506690979
		2 17 0.041800081729888916 18 0.95819991827011108
		2 17 0.26875042915344238 18 0.73124957084655762
		2 17 0.040530562400817871 18 0.95946943759918213
		2 17 0.28130197525024414 18 0.71869802474975586
		2 17 0.042281270027160645 18 0.95771872997283936
		2 17 0.28554552793502808 18 0.71445447206497192
		2 17 0.5494341254234314 18 0.4505658745765686
		2 17 0.29271405935287476 18 0.70728594064712524
		2 17 0.56506666541099548 18 0.43493333458900452
		2 17 0.30763953924179077 18 0.69236046075820923
		3 16 0.0044132471084594727 17 0.58159682154655457 18 0.41398993134498596
		2 17 0.3241162896156311 18 0.6758837103843689
		2 17 0.60247838497161865 18 0.39752161502838135
		2 17 0.33672159910202026 18 0.66327840089797974
		2 17 0.60975486040115356 18 0.39024513959884644
		2 17 0.34876108169555664 18 0.65123891830444336
		2 17 0.61751282215118408 18 0.38248717784881592
		2 17 0.35653162002563477 18 0.64346837997436523
		2 17 0.61478257179260254 18 0.38521742820739746
		2 17 0.36492562294006348 18 0.63507437705993652
		2 17 0.61919021606445312 18 0.38080978393554688
		2 17 0.37135529518127441 18 0.62864470481872559
		2 17 0.63553914427757263 18 0.36446085572242737
		2 17 0.38272792100906372 18 0.61727207899093628
		2 17 0.67052346467971802 18 0.32947653532028198
		2 17 0.39196830987930298 18 0.60803169012069702
		2 17 0.70633748173713684 18 0.29366251826286316
		2 17 0.42076694965362549 18 0.57923305034637451
		2 17 0.72923064231872559 18 0.27076935768127441
		2 17 0.45603150129318237 18 0.54396849870681763
		2 17 0.74166932702064514 18 0.25833067297935486
		2 17 0.48016601800918579 18 0.51983398199081421
		2 17 0.7515350729227066 18 0.2484649270772934
		2 17 0.5009143054485321 18 0.4990856945514679
		2 17 0.76039837300777435 18 0.23960162699222565
		2 17 0.51710692048072815 18 0.48289307951927185
		2 17 0.20989614725112915 18 0.79010385274887085
		2 17 0.23473066091537476 18 0.76526933908462524
		2 17 0.25467395782470703 18 0.74532604217529297
		2 17 0.071834027767181396 18 0.9281659722328186
		2 17 0.083758652210235596 18 0.9162413477897644
		2 17 0.090056955814361572 18 0.90994304418563843
		2 17 0.088602602481842041 18 0.91139739751815796
		2 17 0.0023292899131774902 18 0.99767071008682251
		2 17 0.080618500709533691 18 0.91938149929046631
		2 17 0.0012387633323669434 18 0.99876123666763306
		2 17 0.068131387233734131 18 0.93186861276626587
		2 17 0.00069159269332885742 18 0.99930840730667114
		2 17 0.054056048393249512 18 0.94594395160675049
		2 17 0.00039875507354736328 18 0.99960124492645264
		2 17 0.042063236236572266 18 0.95793676376342773
		2 17 0.00024521350860595703 18 0.99975478649139404
		2 17 0.030817627906799316 18 0.96918237209320068
		2 17 0.00021207332611083984 18 0.99978792667388916
		1 18 1
		1 18 1
		1 18 1
		2 17 0.00013130903244018555 18 0.99986869096755981
		1 18 1
		2 17 0.00011241436004638672 18 0.99988758563995361
		1 18 1
		2 17 6.0319900512695312e-05 18 0.9999396800994873
		1 18 1
		2 17 0.00010859966278076172 18 0.99989140033721924
		1 18 1
		2 17 0.00021821260452270508 18 0.99978178739547729
		1 18 1
		2 17 0.00041341781616210938 18 0.99958658218383789
		2 17 0.00070798397064208984 18 0.99929201602935791
		2 17 0.00069081783294677734 18 0.99930918216705322
		2 17 0.045798659324645996 18 0.954201340675354
		2 17 0.00046396255493164062 18 0.99953603744506836
		2 17 0.05086827278137207 18 0.94913172721862793
		2 17 0.00036412477493286133 18 0.99963587522506714
		2 17 0.049799501895904541 18 0.95020049810409546
		2 17 0.00039374828338623047 18 0.99960625171661377
		2 17 0.044737637042999268 18 0.95526236295700073
		2 17 0.00043165683746337891 18 0.99956834316253662
		2 17 0.042909622192382812 18 0.95709037780761719
		2 17 0.00047814846038818359 18 0.99952185153961182
		2 17 0.04238736629486084 18 0.95761263370513916
		2 17 0.00057399272918701172 18 0.99942600727081299
		2 17 0.04872894287109375 18 0.95127105712890625
		2 17 0.0021345615386962891 18 0.99786543846130371
		2 17 0.072494864463806152 18 0.92750513553619385
		2 17 0.003751218318939209 18 0.99624878168106079
		2 17 0.091371536254882812 18 0.90862846374511719
		2 17 0.004199683666229248 18 0.99580031633377075
		2 17 0.10669702291488647 18 0.89330297708511353
		2 17 0.0073395371437072754 18 0.99266046285629272
		2 17 0.12177002429962158 18 0.87822997570037842
		2 17 0.013804197311401367 18 0.98619580268859863
		2 17 0.14953351020812988 18 0.85046648979187012
		2 17 0.029313504695892334 18 0.97068649530410767
		2 17 0.17926269769668579 18 0.82073730230331421
		2 17 0.052917242050170898 18 0.9470827579498291
		2 17 3.4987926483154297e-05 18 0.99996501207351685
		2 17 0.00030469894409179688 18 0.9996953010559082
		2 17 0.0016672611236572266 18 0.99833273887634277
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 17 1.0132789611816406e-06 18 0.99999898672103882
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 1 0.75455503417573344 2 0.24544496582426656
		3 15 0.37819963693618774 16 0.48600155115127563 19 0.13579881191253662
		1 1 0.97678742557764053;
	setAttr ".wl[7650:7910].w"
		1 7 0.023212574422359467
		1 20 1
		1 2 1
		1 2 1
		2 2 0.69079217314720154 22 0.30920782685279846
		3 15 0.50943899154663086 16 0.4769615363329649 19 0.013599472120404243
		2 2 0.67873150110244751 22 0.32126849889755249
		1 22 1
		2 19 1.0013580322265625e-05 20 0.99998998641967773
		1 22 1
		1 22 1
		2 8 0.013233721256256104 9 0.9867662787437439
		3 15 0.48951399326324463 16 0.51030997326597571 19 0.00017603347077965736
		1 20 1
		1 2 1
		1 2 1
		2 1 0.49939811229705811 2 0.50060188770294189
		2 1 0.79988789558410645 2 0.20011210441589355
		2 1 0.55776280164718628 2 0.44223719835281372
		3 1 0.73011702299118042 2 0.058833256363868713 7 0.21104972064495087
		3 15 0.59017002582550049 16 0.40589594282209873 19 0.0039340313524007797
		3 15 0.62436014413833618 16 0.37544624065048993 19 0.00019361521117389202
		3 15 0.36527663469314575 16 0.47982549667358398 19 0.15489786863327026
		3 15 0.57609423995018005 16 0.41965659242123365 19 0.0042491676285862923
		3 15 0.48032879829406738 16 0.49604181945323944 19 0.023629382252693176
		3 15 0.28542780876159668 16 0.51469726860523224 19 0.19987492263317108
		1 1 1
		2 1 0.87412834167480469 7 0.12587165832519531
		2 1 0.99940659484127536 7 0.00059340515872463584
		2 1 0.99370491458103061 7 0.0062950854189693928
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.87160924077033997 22 0.12839075922966003
		2 2 0.73448446393013 22 0.26551553606987
		2 2 0.38393136826566571 22 0.61606863173433424
		2 2 0.95756673067808151 22 0.042433269321918488
		2 2 0.98616715054959059 22 0.013832849450409412
		2 2 0.9323553740978241 22 0.067644625902175903
		2 2 0.99828479997813702 22 0.0017152000218629837
		3 15 0.6236329972743988 16 0.37608340691076592 19 0.00028359581483528018
		2 2 0.59678474068641663 22 0.40321525931358337
		2 2 0.25230480635756225 22 0.74769519364243775
		2 2 0.28905350216184866 22 0.71094649783815134
		2 2 0.66703981161117554 22 0.33296018838882446
		2 2 0.88591136038303375 22 0.11408863961696625
		2 2 0.90188851207494736 22 0.098111487925052643
		2 2 0.31809661590709604 22 0.68190338409290396
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 2 0.64065518975257874 22 0.35934481024742126
		2 2 0.092872615855490961 22 0.907127384144509
		2 19 1.0728836059570312e-06 20 0.99999892711639404
		1 20 1
		1 20 1
		2 19 0.0052191019058227539 20 0.99478089809417725
		2 19 0.0048282146453857422 20 0.99517178535461426
		2 19 0.0036686062812805176 20 0.99633139371871948
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 8 0.011088311672210693 9 0.98891168832778931
		2 15 0.61392009258270264 16 0.38607990741729736
		3 15 0.59118106961250305 16 0.40878614865141571 19 3.2781736081233248e-05
		3 15 0.35077524185180664 16 0.59488879889249802 19 0.054335959255695343
		3 15 0.19338065385818481 16 0.71623591333627701 19 0.090383432805538177
		3 15 0.39054882526397705 16 0.60943644836879685 19 1.4726367226103321e-05
		2 15 0.59626257419586182 16 0.40373742580413818
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99932021263521165 22 0.00067978736478835344
		2 2 0.99879169254563749 22 0.0012083074543625116
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		3 15 0.40591073036193848 16 0.56467592716217041 19 0.029413342475891113
		3 15 0.60093152523040771 16 0.39862606773385778 19 0.00044240703573450446
		3 15 0.56821119785308838 16 0.43158449904876761 19 0.00020430309814400971
		3 15 0.28632968664169312 16 0.68281387723982334 19 0.030856436118483543
		3 15 0.064540326595306396 16 0.69733208417892456 19 0.23812758922576904
		3 15 0.19527924060821533 16 0.58093912899494171 19 0.22378163039684296
		3 15 7.3850154876708984e-05 16 0.49337929487228394 19 0.50654685497283936
		3 15 0.0024113655090332031 16 0.50852218270301819 19 0.48906645178794861
		3 15 0.011803686618804932 16 0.5166923999786377 19 0.47150391340255737
		1 19 1
		1 19 1
		1 19 1
		3 15 0.045768916606903076 16 0.5059012770652771 19 0.44832980632781982
		2 16 0.2539438009262085 19 0.7460561990737915
		3 15 0.055869042873382568 16 0.50036373734474182 19 0.44376721978187561
		2 16 0.28281188011169434 19 0.71718811988830566
		3 15 0.060809671878814697 16 0.49887877702713013 19 0.44031155109405518
		3 15 0.36255365610122681 16 0.47044689953327179 19 0.1669994443655014
		3 15 0.054267406463623047 16 0.51090648770332336 19 0.43482610583305359
		3 15 0.36059325933456421 16 0.47658294439315796 19 0.16282379627227783
		3 15 0.57263669371604919 16 0.42494654236361384 19 0.0024167639203369617
		3 15 0.572337806224823 16 0.42449894989840686 19 0.0031632438767701387
		3 15 0.7861921638250351 16 0.21380653765936586 19 1.2985155990463682e-06
		3 15 0.78430968523025513 16 0.21568746994239518 19 2.844827349690604e-06
		3 15 0.78546132147312164 16 0.21453314019890968 19 5.5383279686793685e-06
		2 15 0.98537179455161095 16 0.014628205448389053
		2 15 0.98336704075336456 16 0.016632959246635437
		2 15 0.98088007047772408 16 0.019119929522275925
		3 15 0.79252377152442932 16 0.20747045701637035 19 5.7714592003321741e-06
		2 15 0.98217270895838737 16 0.017827291041612625
		3 15 0.80834096670150757 16 0.1916588932363652 19 1.4006212722961209e-07
		2 15 0.98168632388114929 16 0.018313676118850708
		3 15 0.81045989692211151 16 0.1895400025683216 19 1.005095668915601e-07
		2 15 0.98032377846539021 16 0.019676221534609795
		3 15 0.80738385021686554 16 0.19261614226031565 19 7.5228188123332984e-09
		2 15 0.97271654009819031 16 0.027283459901809692
		2 15 0.79887236654758453 16 0.20112763345241547
		2 15 0.95173602923750877 16 0.048263970762491226
		2 15 0.7854686975479126 16 0.2145313024520874
		3 15 0.56937587261199951 16 0.43062411380725774 19 1.3580742752594688e-08
		3 15 0.31505268812179565 16 0.6847741430538008 19 0.00017316882440354675
		3 15 0.03148806095123291 16 0.96806582319550216 19 0.00044611585326492786
		2 16 0.99965842519304715 19 0.00034157480695284903
		2 16 0.97538620792329311 19 0.024613792076706886
		3 15 0.01789546012878418 16 0.94560025632381439 19 0.036504283547401428
		2 16 0.99955892079742625 19 0.00044107920257374644
		2 16 0.999108117131982 19 0.00089188286801800132
		2 16 0.97428601235151291 19 0.025713987648487091
		2 16 0.97534620203077793 19 0.024653797969222069
		2 16 0.99701057304628193 19 0.0029894269537180662
		2 16 0.9924861378967762 19 0.0075138621032238007
		2 16 0.93339259177446365 19 0.066607408225536346
		2 16 0.95855092257261276 19 0.041449077427387238
		2 16 0.97940293326973915 19 0.020597066730260849
		2 16 0.96731423959136009 19 0.032685760408639908
		2 16 0.81811906397342682 19 0.18188093602657318
		2 16 0.87163423001766205 19 0.12836576998233795
		2 16 0.97546256892383099 19 0.024537431076169014
		2 16 0.98125354014337063 19 0.018746459856629372
		2 16 0.77963005006313324 19 0.22036994993686676
		2 16 0.7884090393781662 19 0.2115909606218338
		2 16 0.98287321627140045 19 0.017126783728599548
		2 16 0.9863448916003108 19 0.013655108399689198
		2 16 0.79684779047966003 19 0.20315220952033997
		2 16 0.7815822958946228 19 0.2184177041053772
		2 16 0.99321953998878598 19 0.0067804600112140179
		2 16 0.99679533997550607 19 0.0032046600244939327
		2 16 0.84518386423587799 19 0.15481613576412201
		2 16 0.82080037891864777 19 0.17919962108135223
		2 16 0.99771213438361883 19 0.0022878656163811684
		2 16 0.99920389632461593 19 0.00079610367538407445
		2 16 0.88446451723575592 19 0.11553548276424408
		2 16 0.86666664481163025 19 0.13333335518836975
		3 15 0.0024667978286743164 16 0.99701402068603784 19 0.00051918148528784513
		3 15 0.14134377241134644 16 0.85848201671615243 19 0.00017421087250113487
		3 15 0.030243217945098877 16 0.85481932014226913 19 0.11493746191263199
		3 15 1.8298625946044922e-05 16 0.88657192140817642 19 0.11340977996587753
		2 15 0.82101443409919739 16 0.17898556590080261
		2 15 0.96620895713567734 16 0.033791042864322662
		2 15 0.98796037957072258 16 0.01203962042927742
		2 15 0.82377800345420837 16 0.17622199654579163
		2 15 0.99612180143594742 16 0.0038781985640525818
		2 15 0.818595290184021 16 0.181404709815979
		2 15 0.9982945779338479 16 0.0017054220661520958
		2 15 0.81465978920459747 16 0.18534021079540253
		3 15 0.58583387732505798 16 0.41405957045935793 19 0.00010655221558408812
		3 15 0.35209602117538452 16 0.55356406420469284 19 0.094339914619922638
		2 15 0.80864168703556061 16 0.19135831296443939
		3 15 0.58327692747116089 16 0.41649004310602322 19 0.00023302942281588912
		3 15 0.35650306940078735 16 0.52247676998376846 19 0.12102016061544418
		3 15 0.02751457691192627 16 0.56267476081848145 19 0.40981066226959229
		3 15 0.0070488452911376953 16 0.59178236126899719 19 0.40116879343986511
		3 15 0.57946261763572693 16 0.42006496942485683 19 0.00047241293941624463
		3 15 0.3582310676574707 16 0.5017012357711792 19 0.1400676965713501
		3 15 0.036046147346496582 16 0.54516386985778809 19 0.41878998279571533
		3 15 0.045337021350860596 16 0.52502256631851196 19 0.42964041233062744
		2 16 0.29456359148025513 19 0.70543640851974487
		2 16 0.30050820112228394 19 0.69949179887771606
		2 16 0.30418163537979126 19 0.69581836462020874
		3 15 0.35914534330368042 16 0.48605680465698242 19 0.15479785203933716
		3 15 0.57532587647438049 16 0.4233067745808512 19 0.0013673489447683096
		3 15 0.79972372949123383 16 0.20027626300950541 19 7.4992607679291723e-09
		3 15 0.79150472581386566 16 0.2084949298505876 19 3.4433554674251354e-07
		2 15 0.99594679288566113 16 0.0040532071143388748
		2 15 0.99289517709985375 16 0.007104822900146246
		2 15 0.98886669147759676 16 0.01113330852240324
		2 15 0.99999649621008757 16 3.5037899124290561e-06
		2 15 0.99999189496884355 16 8.1050311564467847e-06
		2 15 0.99998468585181399 16 1.5314148186007515e-05
		1 15 1
		1 15 1
		1 15 1
		2 15 0.99997727895788557 16 2.2721042114426382e-05
		1 15 1
		2 15 0.99997360816996661 16 2.6391830033389851e-05
		1 15 1
		2 15 0.99998131385837041 16 1.8686141629586928e-05
		2 15 0.99999999980547671 16 1.9452327248981049e-10
		2 15 0.99997934695602453 16 2.0653043975471519e-05
		2 15 0.9999999840243774 16 1.5975622602582007e-08
		2 15 0.99994938411327894 16 5.0615886721061543e-05
		2 15 0.99999744844876659 16 2.5515512334095547e-06
		2 15 0.9992117477231659 16 0.00078825227683410048
		2 15 0.99991390957438853 16 8.609042561147362e-05
		2 15 0.99362323014065623 16 0.0063767698593437672
		2 15 0.99999998590546557 16 1.4094534428465977e-08
		1 15 1
		1 15 1
		2 1 4.8875808715820312e-06 15 0.99999511241912842
		2 1 0.0011436343193054199 15 0.99885636568069458
		2 1 0.013870060443878174 15 0.98612993955612183
		2 1 0.060599625110626221 15 0.93940037488937378
		2 1 0.14383208751678467 15 0.85616791248321533
		2 1 0.29021614789962769 15 0.70978385210037231
		2 1 0.45839762687683105 15 0.54160237312316895
		2 1 0.62574312090873718 15 0.37425687909126282
		2 1 0.77948173880577087 15 0.22051826119422913
		2 1 0.89931819587945938 15 0.10068180412054062
		2 1 0.97623485140502453 15 0.023765148594975471
		2 1 0.99927675887010992 15 0.00072324112989008427
		1 1 0.9999999286122403;
	setAttr ".wl[7910:8244].w"
		1 15 7.1387759703611664e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.80677379667758942 7 0.19322620332241058
		2 1 0.84580789506435394 7 0.15419210493564606
		2 1 0.84490780532360077 7 0.15509219467639923
		2 1 0.80251246690750122 7 0.19748753309249878
		2 1 0.49977809190750122 7 0.50022190809249878
		2 1 0.56279367208480835 7 0.43720632791519165
		2 1 0.35711759328842163 7 0.64288240671157837
		1 7 1
		1 7 1
		2 7 0.99538936745375395 8 0.0046106325462460518
		3 1 3.2186508178710938e-05 7 0.74607780575752258 8 0.25389000773429871
		2 7 0.42665386199951172 8 0.57334613800048828
		2 7 0.19088178873062134 8 0.80911821126937866
		1 8 1
		2 8 0.99027436412870884 9 0.0097256358712911606
		2 8 0.40243780612945557 9 0.59756219387054443
		2 8 0.19231748580932617 9 0.80768251419067383
		2 8 0.010808825492858887 9 0.98919117450714111
		2 8 0.001339256763458252 9 0.99866074323654175
		2 8 0.00411224365234375 9 0.99588775634765625
		2 8 0.0075987577438354492 9 0.99240124225616455
		2 8 0.010256290435791016 9 0.98974370956420898
		2 8 0.04913020133972168 9 0.95086979866027832
		2 8 0.065584719181060791 9 0.93441528081893921
		2 8 0.073649883270263672 9 0.92635011672973633
		2 8 0.20716029405593872 9 0.79283970594406128
		2 8 0.20775610208511353 9 0.79224389791488647
		2 8 0.19695872068405151 9 0.80304127931594849
		2 8 0.067239105701446533 9 0.93276089429855347
		2 8 0.40874052047729492 9 0.59125947952270508
		2 8 0.88034491986036301 9 0.11965508013963699
		2 7 0.012587308883666992 8 0.98741269111633301
		2 7 0.19264668226242065 8 0.80735331773757935
		2 7 0.40307146310806274 8 0.59692853689193726
		2 7 0.74253374338150024 8 0.25746625661849976
		1 7 1
		1 7 1
		3 1 0.38737963698804379 2 0.0029023382812738419 7 0.60971802473068237
		3 1 0.39905194455059245 2 0.00082923955051228404 7 0.60011881589889526
		3 1 0.78261318663135171 2 0.0033183260820806026 7 0.21406848728656769
		1 7 1
		1 7 1
		2 1 0.43002623319625854 7 0.56997376680374146
		2 1 1.1324882507324219e-06 7 0.99999886751174927
		2 1 4.7087669372558594e-06 7 0.99999529123306274
		1 7 1
		1 7 1
		2 7 0.74208670854568481 8 0.25791329145431519
		2 7 0.7547028660774231 8 0.2452971339225769
		2 7 0.75749483704566956 8 0.24250516295433044
		3 1 0.00060766935348510742 7 0.7506219744682312 8 0.24877035617828369
		3 1 0.00035321712493896484 7 0.99908922257600352 8 0.00055756029905751348
		2 7 0.40740442276000977 8 0.59259557723999023
		2 7 0.41546076536178589 8 0.58453923463821411
		2 7 0.43020564317703247 8 0.56979435682296753
		2 7 0.19606369733810425 8 0.80393630266189575
		2 7 0.1981390118598938 8 0.8018609881401062
		2 7 0.00019168853759765628 8 0.99980831146240234
		2 7 0.00031989812850952148 8 0.99968010187149048
		2 8 0.9472249448299408 9 0.052775055170059204
		2 8 0.97139079496264458 9 0.028609205037355423
		2 8 0.43636071681976318 9 0.56363928318023682
		2 8 0.42537379264831543 9 0.57462620735168457
		2 8 0.20326864719390869 9 0.79673135280609131
		2 8 0.20270180702209473 9 0.79729819297790527
		2 8 0.028307318687438965 9 0.97169268131256104
		2 8 0.43701672554016113 9 0.56298327445983887
		2 8 0.92392107844352722 9 0.076078921556472778
		2 8 0.89898819476366043 9 0.10101180523633957
		2 8 0.42525392770767212 9 0.57474607229232788
		2 7 0.0048279762268066406 8 0.99517202377319336
		2 7 0.010341882705688477 8 0.98965811729431152
		2 7 0.19730430841445923 8 0.80269569158554077
		2 7 0.20034909248352051 8 0.79965090751647949
		2 7 0.40988653898239136 8 0.59011346101760864
		2 1 0.9944676267914474 2 0.005532373208552599
		2 1 0.99207660742104053 2 0.007923392578959465
		2 1 0.98104611225426197 2 0.018953887745738029
		2 1 0.81947644054889679 2 0.18052355945110321
		2 1 0.96314960718154907 2 0.036850392818450928
		2 1 0.81910960376262665 2 0.18089039623737335
		2 1 0.59790045022964478 2 0.40209954977035522
		2 1 0.58620539307594299 2 0.41379460692405701
		2 1 0.35889959335327148 2 0.64110040664672852
		2 1 0.35056793689727783 2 0.64943206310272217
		2 1 0.33257097005844116 2 0.66742902994155884
		2 1 0.1385878324508667 2 0.8614121675491333
		2 1 0.14601916074752808 2 0.85398083925247192
		2 1 0.11427313089370728 2 0.88572686910629272
		2 1 0.28854846954345703 2 0.71145153045654297
		2 1 0.010787844657897949 2 0.98921215534210205
		2 1 5.3644180297851562e-05 2 0.99994635581970215
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.82005690038204193 22 0.17994309961795807
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 2 0.0023294614067881653 22 0.99767053859321186
		2 2 0.030826559675252118 22 0.96917344032474784
		2 2 0.11532321994151171 22 0.88467678005848827
		2 2 0.25527590828004454 22 0.74472409171995546
		2 2 0.57505568861961365 22 0.42494431138038635
		2 2 0.78547118604183197 22 0.21452881395816803
		2 2 0.93345075100660324 22 0.066549248993396759
		2 2 0.99497820064425468 22 0.0050217993557453156
		2 2 0.99997948000418546 22 2.0519995814538561e-05
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.0073712468147277832 2 0.99262875318527222
		2 1 0.15419107675552368 2 0.84580892324447632
		2 1 0.36069214344024658 2 0.63930785655975342
		2 1 0.66411092877388 2 0.33588907122612
		2 1 0.94017179682850838 2 0.059828203171491623
		2 1 0.99999701255114815 2 2.987448851854424e-06
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99889791628811508 15 0.0011020837118849158
		2 1 0.90873184055089951 15 0.091268159449100494
		2 1 0.73608577251434326 15 0.26391422748565674
		2 1 0.52661389112472534 15 0.47338610887527466
		2 1 0.2985159158706665 15 0.7014840841293335
		2 1 0.11681956052780151 15 0.88318043947219849
		2 1 0.038278281688690186 15 0.96172171831130981
		2 1 0.0057554244995117188 15 0.99424457550048828
		2 1 0.00017970800399780273 15 0.9998202919960022
		2 1 3.5762786865234375e-07 15 0.99999964237213135
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 15 0.99883812002371997 16 0.0011618799762800336
		1 15 1
		2 15 0.99983955759671517 16 0.00016044240328483284
		1 15 1
		2 15 0.99998713861350552 16 1.2861386494478211e-05
		1 15 1
		2 15 0.99999868179986606 16 1.3182001339373528e-06
		1 15 1
		2 15 0.99999955656403472 16 4.4343596528051421e-07
		2 15 0.99766324087977409 16 0.0023367591202259064
		2 15 0.99999882248403082 16 1.1775159691751469e-06
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 1 0.00032526254653930664 15 0.99967473745346069
		2 1 8.9585781097412109e-05 15 0.99991041421890259
		2 1 0.0093540549278259277 15 0.99064594507217407
		2 1 0.005203545093536377 15 0.99479645490646362
		2 1 0.032148122787475586 15 0.96785187721252441
		2 1 0.023795545101165771 15 0.97620445489883423
		2 1 0.081525862216949463 15 0.91847413778305054
		2 1 0.069197773933410645 15 0.93080222606658936
		2 1 0.18572467565536499 15 0.81427532434463501
		2 1 0.16342395544052124 15 0.83657604455947876
		2 1 0.34521770477294922 15 0.65478229522705078
		2 1 0.31282305717468262 15 0.68717694282531738
		2 1 0.5207543671131134 15 0.4792456328868866
		2 1 0.48702913522720337 15 0.51297086477279663
		2 1 0.67265909910202026 15 0.32734090089797974
		2 1 0.64592313766479492 15 0.35407686233520508
		2 1 0.81918945908546448 15 0.18081054091453552
		2 1 0.79391360282897949 15 0.20608639717102051
		2 1 0.92849531769752502 15 0.071504682302474976
		2 1 0.90837724506855011 15 0.09162275493144989
		2 1 0.99096216913312674 15 0.0090378308668732643
		2 1 0.98161211609840393 15 0.018387883901596069
		2 1 0.9999577514900011 15 4.2248509998898953e-05
		2 1 0.99976414465345442 15 0.00023585534654557705
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.98675328586250544 2 0.013246714137494564
		2 1 0.99692992563359439 2 0.0030700743664056063
		1 1 1
		2 1 0.94437085464596748 2 0.055629145354032516
		2 1 0.91976746916770935 2 0.080232530832290649
		2 1 0.81495358049869537 2 0.18504641950130463
		2 1 0.81750325858592987 2 0.18249674141407013
		2 1 0.61457163095474243 2 0.38542836904525757
		2 1 0.61007502675056458 2 0.38992497324943542
		2 1 0.38203251361846924 2 0.61796748638153076
		2 1 0.37322056293487549 2 0.62677943706512451
		2 1 0.17363590002059937 2 0.82636409997940063
		2 1 0.15838569402694702 2 0.84161430597305298
		2 1 0.14017093181610107 2 0.85982906818389893
		2 1 0.0016168355941772461 2 0.99838316440582275
		2 1 0.00065594911575317383 2 0.99934405088424683
		2 1 0.0061832070350646973 2 0.9938167929649353
		1 2 1
		2 1 5.9604644775390625e-08 2 0.99999994039535522
		2 1 9.2208385467529297e-05 2 0.99990779161453247
		2 1 0.022229492664337158 2 0.97777050733566284
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1;
	setAttr ".wl[8245:8597].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99999998347821872 22 1.6521781276424008e-08
		2 2 0.99999450165432791 22 5.4983456720947288e-06
		2 2 0.99967283094883896 22 0.0003271690511610359
		2 2 0.99999992681210159 22 7.3187898408377805e-08
		2 2 0.99999468967462235 22 5.3103253776498605e-06
		2 2 0.99938273406587541 22 0.00061726593412458897
		2 2 0.97824914008378983 22 0.021750859916210175
		2 2 0.99999999698351649 22 3.0164835074231178e-09
		2 2 0.99999926482553292 22 7.3517446708137868e-07
		2 2 0.99960257307975553 22 0.00039742692024447024
		2 2 0.99405916733667254 22 0.0059408326633274555
		2 2 0.91912504285573959 22 0.080874957144260406
		1 2 1
		2 2 0.99999979914620951 22 2.0085379048850882e-07
		2 2 0.99998579785278707 22 1.420214721292723e-05
		2 2 0.99998520974895655 22 1.4790251043450553e-05
		2 2 0.99147325195372105 22 0.0085267480462789536
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99981189526442904 22 0.00018810473557095975
		2 2 0.99499415885657072 22 0.0050058411434292793
		2 2 0.97895670682191849 22 0.021043293178081512
		2 2 0.88861328363418579 22 0.11138671636581421
		2 2 0.84061408042907715 22 0.15938591957092285
		2 2 0.96900571510195732 22 0.030994284898042679
		2 2 0.80861416459083557 22 0.19138583540916443
		2 2 0.56167829036712646 22 0.43832170963287354
		2 2 0.78438438475131989 22 0.21561561524868011
		2 2 0.55029737949371338 22 0.44970262050628662
		2 2 0.2187622738524716 22 0.7812377261475284
		2 2 0.22605130587800118 22 0.77394869412199885
		2 2 0.062780933284392659 22 0.93721906671560729
		2 2 0.073087416200209879 22 0.92691258379979014
		2 2 0.10130828779250485 22 0.89869171220749511
		2 2 0.008607055646848558 22 0.9913929443531514
		2 2 0.021894551103605303 22 0.97810544889639472
		2 2 0.034041216265550102 22 0.96595878373444988
		2 2 0.12719058125475205 22 0.87280941874524798
		2 2 0.045369982855522517 22 0.95463001714447748
		2 2 0.15082427389470446 22 0.84917572610529557
		2 2 0.056100339570176301 22 0.94389966042982365
		2 2 0.18111571125525039 22 0.81888428874474961
		2 2 0.064531594327235653 22 0.93546840567276435
		2 2 0.21487801241737983 22 0.7851219875826202
		2 2 0.067205775454706948 22 0.93279422454529304
		2 2 0.1786844074537344 22 0.82131559254626563
		2 2 0.24425398607381174 22 0.75574601392618823
		2 2 0.92870350927114487 22 0.071296490728855133
		2 2 0.99488767329603434 22 0.0051123267039656639
		1 2 1
		2 2 0.82070536911487579 22 0.17929463088512421
		2 2 0.99892570462543517 22 0.0010742953745648265
		1 2 1
		2 2 0.97085357271134853 22 0.029146427288651466
		1 2 1
		1 2 1
		2 2 0.72298038005828857 22 0.27701961994171143
		2 2 0.99905882350867614 22 0.0009411764913238585
		2 2 0.76059055328369141 22 0.23940944671630859
		2 2 0.99970965011743829 22 0.00029034988256171346
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.0042754234169060362 22 0.99572457658309399
		2 2 0.0050147595650595249 22 0.99498524043494052
		2 2 1.5790597732503081e-05 22 0.99998420940226751
		2 2 4.2497425168293407e-07 22 0.99999957502574832
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 2 1.3636618729898448e-07 22 0.99999986363381266
		2 2 0.00016210280995435181 22 0.99983789719004568
		2 2 4.8604164292413865e-05 22 0.99995139583570758
		1 22 1
		2 2 7.288886920060695e-07 22 0.99999927111130804
		2 2 0.00084865861816738812 22 0.99915134138183259
		2 2 1.9640933191329888e-06 22 0.9999980359066809
		2 2 0.0014807632238552403 22 0.99851923677614474
		2 2 3.5796586896260664e-06 22 0.99999642034131042
		2 2 0.0021363284706538473 22 0.99786367152934619
		2 2 6.1065397831400814e-06 22 0.99999389346021683
		2 2 0.0031121878155217506 22 0.99688781218447819
		1 22 1
		1 22 1
		1 22 1
		2 2 0.0042969860113458288 22 0.99570301398865413
		2 2 0.0071732459474382537 22 0.99282675405256171
		2 2 4.1024009181316947e-05 22 0.99995897599081873
		2 2 0.018027489477263386 22 0.9819725105227366
		2 2 0.00043324963664640148 22 0.99956675036335363
		1 22 1
		2 2 0.0017771918982275206 22 0.99822280810177244
		1 22 1
		1 22 1
		2 2 0.028202089018522645 22 0.97179791098147739
		2 2 0.11260511260989202 22 0.88739488739010797
		2 2 0.097154951593119071 22 0.90284504840688096
		2 2 0.24507455155759852 22 0.7549254484424015
		2 2 0.25439552589335285 22 0.74560447410664721
		2 2 0.079209725659354135 22 0.92079027434064586
		2 2 0.23117253960805326 22 0.76882746039194672
		2 2 0.55617988109588623 22 0.44382011890411377
		2 2 0.56433200836181641 22 0.43566799163818359
		2 2 0.77662444114685059 22 0.22337555885314941
		2 2 0.77979534864425659 22 0.22020465135574341
		2 2 0.57125484943389893 22 0.42874515056610107
		2 2 0.776603102684021 22 0.223396897315979
		2 2 0.94258261099457741 22 0.057417389005422592
		2 2 0.93468128144741058 22 0.065318718552589417
		2 2 0.95164889842271805 22 0.048351101577281952
		3 2 0.99881116103354373 4 9.3011450985613919e-08 22 0.0011887459550052881
		2 2 0.99787921505048871 22 0.0021207849495112896
		2 2 0.99942822125740349 22 0.00057177874259650707
		2 2 0.99999990510031012 22 9.4899689884186955e-08
		3 2 0.99999779500282671 4 1.8357541193836369e-06 22 3.6924305391039525e-07
		1 2 1
		1 2 1
		2 2 0.9999999642557249 4 3.5744275095339617e-08
		2 2 0.99999994520197077 4 5.4798029225366918e-08
		1 2 1
		2 1 0.00040417909622192377 2 0.99959582090377808
		2 1 0.17687022686004639 2 0.82312977313995361
		2 1 2.9146671295166016e-05 2 0.99997085332870483
		3 1 0.41004002094268799 2 0.58995995359422082 4 2.5463091191113563e-08
		3 1 0.44396895170211792 2 0.55558728752657771 4 0.00044376077130436897
		2 1 0.39561939239501953 2 0.60438060760498047
		2 1 0.61793828010559082 2 0.38206171989440918
		2 1 0.62639102339744568 2 0.37360897660255432
		2 1 0.7884012758731842 2 0.2115987241268158
		2 1 0.80654501914978027 2 0.19345498085021973
		3 1 0.63874605298042297 2 0.36125393853187937 4 8.4876976558234674e-09
		2 1 0.79472017288208008 2 0.20527982711791992
		2 1 0.89041610807180405 2 0.10958389192819595
		2 1 0.89512089639902115 2 0.10487910360097885
		2 1 0.98340755887329578 2 0.016592441126704216
		2 1 0.98185442015528679 2 0.018145579844713211
		2 1 0.92348957061767578 2 0.076510429382324219
		2 1 0.97291427291929722 2 0.027085727080702782
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99999996662375779 2 3.3376242214444574e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99998953092108422 15 1.0469078915775754e-05
		2 1 0.99998918061555742 15 1.0819384442584123e-05
		1 1 1
		2 1 0.99999720396385783 15 2.7960361421719426e-06
		2 1 0.99358281027525663 15 0.0064171897247433662
		2 1 0.99467472080141306 15 0.0053252791985869408
		2 1 0.94538535550236702 15 0.05461464449763298
		2 1 0.94972644746303558 15 0.050273552536964417
		2 1 0.99558373400941491 15 0.0044162659905850887
		2 1 0.9368276447057724 15 0.0631723552942276
		2 1 0.83778266608715057 15 0.16221733391284943
		2 1 0.85499131679534912 15 0.14500868320465088
		2 1 0.72855189442634583 15 0.27144810557365417
		2 1 0.75166109204292297 15 0.24833890795707703
		2 1 0.8706987202167511 15 0.1293012797832489
		2 1 0.70093366503715515 15 0.29906633496284485
		2 1 0.55509787797927856 15 0.44490212202072144
		2 1 0.58734238147735596 15 0.41265761852264404
		2 1 0.41471803188323975 15 0.58528196811676025
		2 1 0.44426560401916504 15 0.55573439598083496
		2 1 0.61231637001037598 15 0.38768362998962402
		2 1 0.38113951683044434 15 0.61886048316955566
		2 1 0.21411073207855225 15 0.78588926792144775
		2 1 0.24662351608276367 15 0.75337648391723633
		2 1 0.1197357177734375 15 0.8802642822265625
		2 1 0.13212156295776367 15 0.86787843704223633
		2 1 0.27645856142044067 15 0.72354143857955933
		1 1 0.09986567497253418;
	setAttr ".wl[8597:8918].w"
		1 15 0.90013432502746582
		2 1 0.041396915912628174 15 0.95860308408737183
		2 1 0.05093914270401001 15 0.94906085729598999
		2 1 0.011309504508972168 15 0.98869049549102783
		2 1 0.013146460056304932 15 0.98685353994369507
		2 1 0.057750284671783447 15 0.94224971532821655
		2 1 0.011610269546508789 15 0.98838973045349121
		2 1 0.00036740303039550781 15 0.99963259696960449
		2 1 0.00026953220367431641 15 0.99973046779632568
		1 15 1
		1 15 1
		2 1 0.00020378828048706055 15 0.99979621171951294
		1 15 1
		1 15 1
		2 1 0.00012850761413574219 15 0.99987149238586426
		2 1 0.012890040874481201 15 0.9871099591255188
		2 1 7.6532363891601562e-05 15 0.9999234676361084
		2 1 0.0094779729843139648 15 0.99052202701568604
		2 1 0.066643774509429932 15 0.93335622549057007
		2 1 0.062243640422821045 15 0.93775635957717896
		2 1 0.15175372362136841 15 0.84824627637863159
		2 1 0.14268779754638672 15 0.85731220245361328
		2 1 0.30939537286758423 15 0.69060462713241577
		2 1 0.29779946804046631 15 0.70220053195953369
		2 1 0.48127371072769165 15 0.51872628927230835
		2 1 0.46697551012039185 15 0.53302448987960815
		2 1 0.64549389481544495 15 0.35450610518455505
		2 1 0.63103130459785461 15 0.36896869540214539
		2 1 0.78935188055038452 15 0.21064811944961548
		2 1 0.7741420567035675 15 0.2258579432964325
		2 1 0.89395827800035477 15 0.10604172199964523
		2 1 0.8836696445941925 15 0.1163303554058075
		2 1 0.96504869684576988 15 0.034951303154230118
		2 1 0.95901082828640938 15 0.040989171713590622
		2 1 0.99836692109238356 15 0.0016330789076164365
		2 1 0.99770775088109076 15 0.0022922491189092398
		1 1 1
		2 1 0.99999996507195377 15 3.492804623306256e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99018880538642406 2 0.0098111946135759354
		2 1 0.98166756704449654 2 0.018332432955503464
		2 1 0.93135674297809601 2 0.068643257021903992
		2 1 0.91726204752922058 2 0.082737952470779419
		2 1 0.83245205879211426 2 0.16754794120788574
		2 1 0.81453824043273926 2 0.18546175956726074
		2 1 0.68508321046829224 2 0.31491678953170776
		3 1 0.66487953066825867 2 0.3351199211993503 4 5.4813239103168598e-07
		2 1 0.50491997599601746 2 0.49508002400398254
		3 1 0.49391657114028931 2 0.50274430913850665 4 0.0033391197212040424
		2 1 0.49803799390792847 2 0.50196200609207153
		2 1 0.26662611961364746 2 0.73337388038635254
		3 1 0.033591508865356445 2 0.96493042283691466 4 0.0014780682977288961
		2 1 0.23833447694778442 2 0.76166552305221558
		2 1 0.019352316856384277 2 0.98064768314361572
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99924129043938592 4 0.00075870956061407924
		2 2 0.99999854897782825 4 1.4510221717500826e-06
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.99998969987609598 22 1.03001239040168e-05
		2 2 0.99999805321817803 22 1.9467818219709443e-06
		2 2 0.99599037598818541 22 0.0040096240118145943
		2 2 0.99997818456176901 22 2.1815438230987638e-05
		2 2 0.99432538449764252 22 0.0056746155023574829
		2 2 0.93129512667655945 22 0.068704873323440552
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 1 0.0046440362930297852 2 0.99535596370697021
		2 1 0.0027988553047180176 2 0.99720114469528198
		2 1 0.18981689214706421 2 0.81018310785293579
		2 1 0.17338353395462036 2 0.82661646604537964
		2 1 0.0047990083694458008 2 0.9952009916305542
		2 1 0.21266508102416992 2 0.78733491897583008
		2 1 0.43993359804153442 2 0.56006640195846558
		2 1 0.41800433397293091 2 0.58199566602706909
		2 1 0.46858066320419312 2 0.53141933679580688
		2 1 0.70725098252296448 2 0.29274901747703552
		2 1 0.69729188084602356 2 0.30270811915397644
		2 1 0.70191377401351929 2 0.29808622598648071
		2 1 0.8633071631193161 2 0.1366928368806839
		2 1 0.90024824440479279 2 0.099751755595207214
		2 1 0.98750434163957834 2 0.012495658360421658
		1 1 1
		2 1 0.90653349459171295 2 0.093466505408287048
		2 1 0.96232718229293823 2 0.037672817707061768
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99999980546212441 15 1.945378755863203e-07
		2 1 0.99999574906587441 15 4.2509341255936306e-06
		2 1 0.99957271601306275 15 0.00042728398693725467
		2 1 0.99995543103068485 15 4.4568969315150753e-05
		1 1 1
		2 1 0.99898658262100071 15 0.0010134173789992929
		2 1 0.97345253825187683 15 0.026547461748123169
		2 1 0.98097642883658409 15 0.019023571163415909
		2 1 0.91364698112010956 15 0.086353018879890442
		2 1 0.92575915902853012 15 0.074240840971469879
		2 1 0.99127643182873726 15 0.0087235681712627411
		2 1 0.90234589576721191 15 0.097654104232788086
		2 1 0.79882641136646271 15 0.20117358863353729
		2 1 0.80308353900909424 15 0.19691646099090576
		2 1 0.64717358350753784 15 0.35282641649246216
		2 1 0.63868898153305054 15 0.36131101846694946
		2 1 0.80318368971347809 15 0.19681631028652191
		2 1 0.65045264363288879 15 0.34954735636711121
		2 1 0.48606681823730469 15 0.51393318176269531
		2 1 0.48032748699188232 15 0.51967251300811768
		2 1 0.30372202396392822 15 0.69627797603607178
		2 1 0.28068983554840088 15 0.71931016445159912
		2 1 0.46077609062194824 15 0.53922390937805176
		2 1 0.31149923801422119 15 0.68850076198577881
		2 1 0.15260761976242065 15 0.84739238023757935
		2 1 0.14374428987503052 15 0.85625571012496948
		2 1 0.060950279235839844 15 0.93904972076416016
		2 1 0.049032807350158691 15 0.95096719264984131
		2 1 0.12284040451049805 15 0.87715959548950195
		2 1 0.066143035888671875 15 0.93385696411132812
		2 1 0.0057522058486938477 15 0.99424779415130615
		2 1 0.0036161541938781738 15 0.99638384580612183
		1 15 1
		1 15 1
		2 1 0.0021496415138244629 15 0.99785035848617554
		2 1 8.2850456237792969e-06 15 0.99999171495437622
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 1 3.0994415283203125e-06 15 0.99999690055847168
		1 15 1
		2 1 1.3768672943115234e-05 15 0.99998623132705688
		2 1 0.0028565526008605957 15 0.9971434473991394
		2 1 0.0020548105239868164 15 0.99794518947601318
		2 1 0.028019726276397705 15 0.97198027372360229
		2 1 0.036796391010284424 15 0.96320360898971558
		2 1 0.074482738971710205 15 0.92551726102828979
		2 1 0.097401142120361328 15 0.90259885787963867
		2 1 0.20156419277191162 15 0.79843580722808838
		2 1 0.24077558517456055 15 0.75922441482543945
		2 1 0.39279800653457642 15 0.60720199346542358
		2 1 0.42989939451217651 15 0.57010060548782349
		2 1 0.59816211462020874 15 0.40183788537979126
		2 1 0.62167701125144958 15 0.37832298874855042
		2 1 0.78773538768291473 15 0.21226461231708527
		2 1 0.79761509597301483 15 0.20238490402698517
		2 1 0.93124403059482574 15 0.068755969405174255
		2 1 0.93362563848495483 15 0.066374361515045166
		2 1 0.99882764264475554 15 0.0011723573552444577
		2 1 0.99902372213546187 15 0.00097627786453813314
		1 1 1
		2 1 0.99999983057749375 15 1.6942250624651933e-07
		2 1 0.99999997341498492 15 2.6585015078239849e-08
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 1 0.99362397426739335 2 0.0063760257326066494
		2 1 0.96932541392743587 2 0.030674586072564125
		2 1 0.90166659653186798 2 0.098333403468132019
		2 1 0.68564790487289429 2 0.31435209512710571
		2 1 0.68756654858589172 2 0.31243345141410828
		2 1 0.38588225841522217 2 0.61411774158477783
		1 1 1
		1 1 1
		2 1 0.99999947517954979 15 5.2482045020951773e-07
		1 1 1
		1 1 1
		2 1 0.99920918641146272 15 0.00079081358853727579
		2 1 0.99861115554813296 15 0.001388844451867044
		2 1 0.92539653182029724 15 0.074603468179702759
		2 1 0.91680099815130234 15 0.083199001848697662
		2 1 0.75512459874153137 15 0.24487540125846863
		2 1 0.77198225259780884 15 0.22801774740219116
		2 1 0.57309496402740479 15 0.42690503597259521
		2 1 0.54866510629653931 15 0.45133489370346069
		2 1 0.32048577070236206 15 0.67951422929763794
		2 1 0.35452175140380859 15 0.64547824859619141
		2 1 0.16056084632873535 15 0.83943915367126465
		2 1 0.13233369588851929 15 0.86766630411148071
		2 1 0.045613408088684082 15 0.95438659191131592
		2 1 0.056795299053192139 15 0.94320470094680786
		2 1 0.02203071117401123 15 0.97796928882598877
		2 1 0.013982534408569336 15 0.98601746559143066
		2 1 0.0012252330780029297 15 0.99877476692199707
		2 1 0.0029535889625549316 15 0.99704641103744507
		2 1 2.1398067474365234e-05 15 0.99997860193252563
		2 1 5.3048133850097656e-06 15 0.99999469518661499
		1 15 1
		2 1 5.9604644775390625e-08 15 0.99999994039535522
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 2 0.999999999880549 22 1.1945100464316738e-10
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 19 0.99442646326497197 20 0.0055735367350280285
		2 19 0.99693229072727263 20 0.0030677092727273703
		2 19 0.99757457617670298 20 0.0024254238232970238
		2 16 0.30822402238845825 19 0.69177597761154175
		2 19 0.99823852360714227 20 0.0017614763928577304
		2 16 0.32561880350112915 19 0.67438119649887085
		3 15 0.005414128303527832 16 0.61664280295372009 19 0.37794306874275208
		2 16 0.35597491264343262 19 0.64402508735656738
		3 15 0.00076806545257568359 16 0.63573887944221497 19 0.36349305510520935
		2 16 0.40192544460296631 19 0.59807455539703369
		3 15 6.0915946960449219e-05 16 0.65696385502815247 19 0.34297522902488708
		2 16 0.44176387786865234 19 0.55823612213134766
		2 16 0.6746080219745636 19 0.3253919780254364
		2 16 0.44387072324752808 19 0.55612927675247192
		2 16 0.67696559429168701 19 0.32303440570831299
		2 16 0.41784948110580444 19 0.58215051889419556
		1 16 0.66342616081237793;
	setAttr ".wl[8918:9200].w"
		1 19 0.33657383918762207
		2 16 0.38667058944702148 19 0.61332941055297852
		2 16 0.63819104433059692 19 0.36180895566940308
		2 16 0.34442973136901855 19 0.65557026863098145
		2 16 0.60686469078063965 19 0.39313530921936035
		2 16 0.31332516670227051 19 0.68667483329772949
		2 16 0.57249537110328674 19 0.42750462889671326
		2 16 0.2964509129524231 19 0.7035490870475769
		2 16 0.54416325688362122 19 0.45583674311637878
		2 16 0.29952520132064819 19 0.70047479867935181
		2 16 0.54077437520027161 19 0.45922562479972839
		2 16 0.32616209983825684 19 0.67383790016174316
		2 16 0.55822715163230896 19 0.44177284836769104
		2 16 0.34844869375228882 19 0.65155130624771118
		2 16 0.58580991625785828 19 0.41419008374214172
		2 16 0.38433533906936646 19 0.61566466093063354
		2 16 0.62956124544143677 19 0.37043875455856323
		2 16 0.42380040884017944 19 0.57619959115982056
		2 16 0.67774197459220886 19 0.32225802540779114
		2 16 0.44916802644729614 19 0.55083197355270386
		2 16 0.70866674184799194 19 0.29133325815200806
		2 16 0.45388466119766235 19 0.54611533880233765
		2 16 0.71924376487731934 19 0.28075623512268066
		2 16 0.45456206798553467 19 0.54543793201446533
		2 16 0.72259244322776794 19 0.27740755677223206
		2 16 0.46384763717651367 19 0.53615236282348633
		2 16 0.73155739903450012 19 0.26844260096549988
		2 16 0.47654753923416138 19 0.52345246076583862
		3 15 8.8632106781005859e-05 16 0.74508446455001831 19 0.25482690334320068
		1 19 1
		1 19 1
		1 19 1
		2 19 0.94588249549269676 20 0.054117504507303238
		2 19 0.95896882936358452 20 0.041031170636415482
		2 19 0.97291766665875912 20 0.027082333341240883
		2 19 0.77810811996459961 20 0.22189188003540039
		2 19 0.774608314037323 20 0.225391685962677
		2 19 0.77181136608123779 20 0.22818863391876221
		2 19 0.9794824980199337 20 0.020517501980066299
		2 19 0.76763537526130676 20 0.23236462473869324
		2 19 0.98280004039406776 20 0.017199959605932236
		2 19 0.764400914311409 20 0.235599085688591
		2 19 0.98091947473585606 20 0.019080525264143944
		2 19 0.77754241228103638 20 0.22245758771896362
		2 19 0.98535762913525105 20 0.014642370864748955
		2 19 0.79507556557655334 20 0.20492443442344666
		2 19 0.99069233238697052 20 0.00930766761302948
		2 16 0.29093879461288452 19 0.70906120538711548
		2 19 0.99274993548169732 20 0.0072500645183026791
		2 19 0.80352388322353363 20 0.19647611677646637
		2 19 0.80588735640048981 20 0.19411264359951019
		2 19 0.51262292265892029 20 0.48737707734107971
		3 16 3.5762786865234375e-07 19 0.52572020888328552 20 0.47427943348884583
		2 19 0.5422077476978302 20 0.4577922523021698
		2 19 0.8074336051940918 20 0.1925663948059082
		2 19 0.54653668403625488 20 0.45346331596374512
		2 19 0.80735641717910767 20 0.19264358282089233
		2 19 0.5443929135799408 20 0.4556070864200592
		2 19 0.80369263887405396 20 0.19630736112594604
		2 19 0.54201096296310425 20 0.45798903703689575
		2 19 0.80564527213573456 20 0.19435472786426544
		2 19 0.99901252612471581 20 0.00098747387528419495
		2 19 0.81301093101501465 20 0.18698906898498535
		2 19 0.99965803374652751 20 0.0003419662534724921
		2 19 0.82402335107326508 20 0.17597664892673492
		2 19 0.99973156640771776 20 0.00026843359228223562
		2 19 0.83356717228889465 20 0.16643282771110535
		2 19 0.99900949548464268 20 0.00099050451535731554
		2 19 0.84298856556415558 20 0.15701143443584442
		2 19 0.99914671189617366 20 0.00085328810382634401
		2 19 0.8476322740316391 20 0.1523677259683609
		2 19 0.99875893536955118 20 0.0012410646304488182
		2 19 0.84873609244823456 20 0.15126390755176544
		2 19 0.99836215132381767 20 0.0016378486761823297
		2 19 0.85434071719646454 20 0.14565928280353546
		2 19 0.99870234064292163 20 0.0012976593570783734
		2 19 0.87024475634098053 20 0.12975524365901947
		2 19 0.99964534121681936 20 0.00035465878318063915
		2 19 0.88912735879421234 20 0.11087264120578766
		2 19 0.99987497566326056 20 0.00012502433673944324
		2 19 0.90554453432559967 20 0.09445546567440033
		2 19 0.99999264174994096 20 7.3582500590418931e-06
		2 19 0.92190998047590256 20 0.078090019524097443
		1 19 1
		2 19 0.92470614612102509 20 0.075293853878974915
		1 19 1
		2 19 0.92836365848779678 20 0.071636341512203217
		1 19 1
		2 19 0.93284577876329422 20 0.06715422123670578
		1 19 1
		2 19 0.93848637118935585 20 0.06151362881064415
		2 19 0.99999054050476843 20 9.4594952315674163e-06
		2 19 0.94474798068404198 20 0.055252019315958023
		1 19 1
		2 19 0.94404474645853043 20 0.055955253541469574
		2 19 0.76943230628967285 20 0.23056769371032715
		2 19 0.77322018146514893 20 0.22677981853485107
		2 19 0.77873833477497101 20 0.22126166522502899
		2 19 0.52308320999145508 20 0.47691679000854492
		2 19 0.52459782361984253 20 0.47540217638015747
		2 19 0.52149993181228638 20 0.47850006818771362
		2 19 0.26112693548202515 20 0.73887306451797485
		2 19 0.25490403175354004 20 0.74509596824645996
		2 19 0.24141794443130493 20 0.75858205556869507
		2 19 0.51771506667137146 20 0.48228493332862854
		2 19 0.22846341133117676 20 0.77153658866882324
		2 19 0.51685905456542969 20 0.48314094543457031
		2 19 0.21148681640625 20 0.78851318359375
		2 19 0.51137632131576538 20 0.48862367868423462
		2 19 0.20093750953674316 20 0.79906249046325684
		2 19 0.50044038891792297 20 0.49955961108207703
		2 19 0.19418710470199585 20 0.80581289529800415
		3 16 9.5367431640625e-07 19 0.49277406930923462 20 0.50722497701644897
		3 16 5.9604644775390625e-08 19 0.19600367546081543 20 0.80399626493453979
		3 16 7.8856945037841797e-05 19 0.50046375393867493 20 0.49945738911628723
		2 19 0.19844281673431396 20 0.80155718326568604
		2 19 0.02899700403213501 20 0.97100299596786499
		2 19 0.022628188133239746 20 0.97737181186676025
		2 19 0.020580172538757324 20 0.97941982746124268
		2 19 0.20345389842987061 20 0.79654610157012939
		2 19 0.025952816009521484 20 0.97404718399047852
		2 19 0.22431778907775879 20 0.77568221092224121
		2 19 0.035806357860565186 20 0.96419364213943481
		2 19 0.2499503493309021 20 0.7500496506690979
		2 19 0.041800081729888916 20 0.95819991827011108
		2 19 0.26875042915344238 20 0.73124957084655762
		2 19 0.040530562400817871 20 0.95946943759918213
		2 19 0.28130197525024414 20 0.71869802474975586
		2 19 0.042281270027160645 20 0.95771872997283936
		2 19 0.28554552793502808 20 0.71445447206497192
		2 19 0.5494341254234314 20 0.4505658745765686
		2 19 0.29271405935287476 20 0.70728594064712524
		2 19 0.56506666541099548 20 0.43493333458900452
		2 19 0.30763953924179077 20 0.69236046075820923
		3 16 0.0044132471084594727 19 0.58159682154655457 20 0.41398993134498596
		2 19 0.3241162896156311 20 0.6758837103843689
		2 19 0.60247838497161865 20 0.39752161502838135
		2 19 0.33672159910202026 20 0.66327840089797974
		2 19 0.60975486040115356 20 0.39024513959884644
		2 19 0.34876108169555664 20 0.65123891830444336
		2 19 0.61751282215118408 20 0.38248717784881592
		2 19 0.35653162002563477 20 0.64346837997436523
		2 19 0.61478257179260254 20 0.38521742820739746
		2 19 0.36492562294006348 20 0.63507437705993652
		2 19 0.61919021606445312 20 0.38080978393554688
		2 19 0.37135529518127441 20 0.62864470481872559
		2 19 0.63553914427757263 20 0.36446085572242737
		2 19 0.38272792100906372 20 0.61727207899093628
		2 19 0.67052346467971802 20 0.32947653532028198
		2 19 0.39196830987930298 20 0.60803169012069702
		2 19 0.70633748173713684 20 0.29366251826286316
		2 19 0.42076694965362549 20 0.57923305034637451
		2 19 0.72923064231872559 20 0.27076935768127441
		2 19 0.45603150129318237 20 0.54396849870681763
		2 19 0.74166932702064514 20 0.25833067297935486
		2 19 0.48016601800918579 20 0.51983398199081421
		2 19 0.7515350729227066 20 0.2484649270772934
		2 19 0.5009143054485321 20 0.4990856945514679
		2 19 0.76039837300777435 20 0.23960162699222565
		2 19 0.51710692048072815 20 0.48289307951927185
		2 19 0.20989614725112915 20 0.79010385274887085
		2 19 0.23473066091537476 20 0.76526933908462524
		2 19 0.25467395782470703 20 0.74532604217529297
		2 19 0.071834027767181396 20 0.9281659722328186
		2 19 0.083758652210235596 20 0.9162413477897644
		2 19 0.090056955814361572 20 0.90994304418563843
		2 19 0.088602602481842041 20 0.91139739751815796
		2 19 0.0023292899131774902 20 0.99767071008682251
		2 19 0.080618500709533691 20 0.91938149929046631
		2 19 0.0012387633323669434 20 0.99876123666763306
		2 19 0.068131387233734131 20 0.93186861276626587
		2 19 0.00069159269332885742 20 0.99930840730667114
		2 19 0.054056048393249512 20 0.94594395160675049
		2 19 0.00039875507354736328 20 0.99960124492645264
		2 19 0.042063236236572266 20 0.95793676376342773
		2 19 0.00024521350860595703 20 0.99975478649139404
		2 19 0.030817627906799316 20 0.96918237209320068
		2 19 0.00021207332611083984 20 0.99978792667388916
		1 20 1
		1 20 1
		1 20 1
		2 19 0.00013130903244018555 20 0.99986869096755981
		1 20 1
		2 19 0.00011241436004638672 20 0.99988758563995361
		1 20 1
		2 19 6.0319900512695312e-05 20 0.9999396800994873
		1 20 1
		2 19 0.00010859966278076172 20 0.99989140033721924
		1 20 1
		2 19 0.00021821260452270508 20 0.99978178739547729
		1 20 1
		2 19 0.00041341781616210938 20 0.99958658218383789
		2 19 0.00070798397064208984 20 0.99929201602935791
		2 19 0.00069081783294677734 20 0.99930918216705322
		2 19 0.045798659324645996 20 0.954201340675354
		2 19 0.00046396255493164062 20 0.99953603744506836
		2 19 0.05086827278137207 20 0.94913172721862793
		2 19 0.00036412477493286133 20 0.99963587522506714
		2 19 0.049799501895904541 20 0.95020049810409546
		2 19 0.00039374828338623047 20 0.99960625171661377
		2 19 0.044737637042999268 20 0.95526236295700073
		2 19 0.00043165683746337891 20 0.99956834316253662
		2 19 0.042909622192382812 20 0.95709037780761719
		2 19 0.00047814846038818359 20 0.99952185153961182
		2 19 0.04238736629486084 20 0.95761263370513916
		2 19 0.00057399272918701172 20 0.99942600727081299
		2 19 0.04872894287109375 20 0.95127105712890625
		2 19 0.0021345615386962891 20 0.99786543846130371
		2 19 0.072494864463806152 20 0.92750513553619385
		2 19 0.003751218318939209 20 0.99624878168106079
		2 19 0.091371536254882812 20 0.90862846374511719
		2 19 0.004199683666229248 20 0.99580031633377075
		2 19 0.10669702291488647 20 0.89330297708511353
		2 19 0.0073395371437072754 20 0.99266046285629272
		2 19 0.12177002429962158 20 0.87822997570037842
		2 19 0.013804197311401367 20 0.98619580268859863
		2 19 0.14953351020812988 20 0.85046648979187012
		2 19 0.029313504695892334 20 0.97068649530410767
		2 19 0.17926269769668579 20 0.82073730230331421
		2 19 0.052917242050170898 20 0.9470827579498291
		2 19 3.4987926483154297e-05 20 0.99996501207351685
		2 19 0.00030469894409179688 20 0.9996953010559082
		2 19 0.0016672611236572266 20 0.99833273887634277
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		2 19 1.0132789611816406e-06 20 0.99999898672103882
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1;
	setAttr -s 23 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" -2.2334858221884852e-16 1 3.7681448368362059e-15 -0
		 -0.059168975979678518 -3.67045519941272e-15 0.99824798135609383 0 0.99824798135609383 4.8760723661881471e-18 0.059168975979678629 -0
		 23.219677986466024 3.3754310081826764e-13 -90.705871210779719 1;
	setAttr ".pm[2]" -type "matrix" -2.2334858221884852e-16 1 3.7681448368362059e-15 -0
		 -0.059168975979678518 -3.67045519941272e-15 0.99824798135609383 0 0.99824798135609383 4.8760723661881471e-18 0.059168975979678629 -0
		 -24.996557400425466 3.2999358425081662e-13 -90.705871210779705 1;
	setAttr ".pm[3]" -type "matrix" -1.5198683889927584e-15 1.0000000000000002 3.4552568906949725e-15 -0
		 -0.4026399241364696 -3.6704551994127208e-15 0.91535844972960112 0 0.91535844972960079 4.8760723661881987e-18 0.40263992413646976 -0
		 2.0577848222287405 6.2260482880688001e-13 -151.21748599590416 1;
	setAttr ".pm[4]" -type "matrix" 0.96994546644672808 0.12096284831757494 0.2111250374691219 -0
		 -0.11819527005386046 0.99265703509666392 -0.025727199808675827 0 -0.21268678909686339 1.5959455978986618e-16 0.97712042745183958 -0
		 -21.855028910276705 -88.950148582627804 -53.359704671169474 1;
	setAttr ".pm[5]" -type "matrix" 0.90601462457651039 0.048942913583521423 0.42040705425033087 -0
		 -0.044396200882248625 0.99880157749672982 -0.020600634389916928 0 -0.42091148404469514 6.6335825721353072e-15 0.90710171568534248 -0
		 -43.692639767926018 -84.30623058935835 -65.821009289022811 1;
	setAttr ".pm[6]" -type "matrix" 0.90601462457651039 0.048942913583521423 0.42040705425033087 -0
		 -0.044396200882248625 0.99880157749672982 -0.020600634389916928 0 -0.42091148404469514 6.6335825721353072e-15 0.90710171568534248 -0
		 -73.716188902006081 -84.30623058935835 -65.821009289022811 1;
	setAttr ".pm[7]" -type "matrix" -1.1529460546032628e-16 -1 1.1628208978377241e-14 -0
		 0.96086067688089838 3.0063014949471681e-15 0.27703205522823876 -0 -0.27703205522823854 1.1200152979017308e-14 0.96086067688089838 -0
		 -143.8385849872449 -4.6157495437060027e-13 -39.044400416600993 1;
	setAttr ".pm[8]" -type "matrix" -5.01562074734419e-15 -1 1.049152445594404e-14 -0
		 0.75395494029428745 3.0063014949471681e-15 0.65692613588274718 -0 -0.65692613588274695 1.1200152979017309e-14 0.75395494029428756 -0
		 -133.0539874910082 -4.6124188746321282e-13 -105.06989949505973 1;
	setAttr ".pm[9]" -type "matrix" -5.01562074734419e-15 -1 1.049152445594404e-14 -0
		 0.75395494029428745 3.0063014949471681e-15 0.65692613588274718 -0 -0.65692613588274695 1.1200152979017309e-14 0.75395494029428756 -0
		 -154.26134921392563 -4.0607854828888824e-13 -105.06989949505973 1;
	setAttr ".pm[10]" -type "matrix" 1.105386967453508e-15 -1 -2.5986393433006931e-15 -0
		 0.2928364902778719 2.7041161330888383e-15 -0.95616253323466838 0 0.95616253323466827 2.9107710584857715e-16 0.29283649027787179 -0
		 -98.178131366830058 -1.9631523842145231e-13 39.115127146482969 1;
	setAttr ".pm[11]" -type "matrix" 3.1202032808769564e-16 -9.1210772540258115e-17 -1 -0
		 0.0061174653572451682 0.99998128813373466 -1.8257951141248769e-16 -0 0.99998128813373455 -0.0061174653572450017 2.8098060191066383e-16 -0
		 -87.328145858319743 -70.435722229690768 -1.138081194125593e-14 1;
	setAttr ".pm[12]" -type "matrix" 0.96994546644672819 0.1209628483175747 0.21112503746912223 -0
		 0.11819527005386096 -0.99265703509666403 0.025727199808675466 0 0.21268678909686359 3.0878077872387171e-16 -0.97712042745183991 -0
		 21.85501037651732 88.95011257505756 53.359719557423702 1;
	setAttr ".pm[13]" -type "matrix" 0.9060146245765105 0.048942913583525219 0.42040705425033059 -0
		 0.044396200882249014 -0.99880157749672971 0.02060063438992657 0 0.42091148404469525 -1.5237811012980277e-14 -0.90710171568534281 -0
		 43.692663035290302 84.306277177718655 65.821001777003175 1;
	setAttr ".pm[14]" -type "matrix" 0.9060146245765105 0.048942913583525219 0.42040705425033059 -0
		 0.044396200882249014 -0.99880157749672971 0.02060063438992657 0 0.42091148404469525 -1.5237811012980277e-14 -0.90710171568534281 -0
		 73.716214392041294 84.306210021631642 65.821065229492731 1;
	setAttr ".pm[15]" -type "matrix" -1.1839524525681574e-16 1 -3.7729010941787351e-15 -0
		 -0.031364987201237288 -3.6704551994127208e-15 -0.99950799775582877 0 -0.99950799775582877 4.8760723661881571e-18 0.031364987201237177 -0
		 -85.886503719879229 3.5730507065659557e-13 100.14342947181586 1;
	setAttr ".pm[16]" -type "matrix" -1.1839524525681574e-16 1 -3.7729010941787351e-15 -0
		 -0.031364987201237288 -3.6704551994127208e-15 -0.99950799775582877 0 -0.99950799775582877 4.8760723661881571e-18 0.031364987201237177 -0
		 -160.96619822502052 3.4131785910199322e-13 100.14342947181586 1;
	setAttr ".pm[17]" -type "matrix" 0.89861970791168178 -0.09699186825692159 0.42787287603300533 -0
		 -0.087571689605916866 -0.99528517395369198 -0.04169678270002352 0 0.42989977870695439 -1.5126788710517744e-15 -0.90287661408838737 -0
		 100.5057020992795 91.664583392065182 -158.46198547648572 1;
	setAttr ".pm[18]" -type "matrix" 0.89861970791168178 -0.09699186825692159 0.42787287603300533 -0
		 -0.087571689605916866 -0.99528517395369198 -0.04169678270002352 0 0.42989977870695439 -1.5126788710517744e-15 -0.90287661408838737 -0
		 123.6889055750058 91.664570061642692 -158.46148259056983 1;
	setAttr ".pm[19]" -type "matrix" 0.898619707911682 -0.096991868256922464 0.42787287603300483 -0
		 0.087571689605917102 0.99528517395369187 0.041696782700025199 -0 -0.42989977870695412 2.7755575615628901e-17 0.90287661408838771 -0
		 -100.50568091059408 -91.664608697425237 158.46185117011348 1;
	setAttr ".pm[20]" -type "matrix" 0.898619707911682 -0.096991868256922464 0.42787287603300483 -0
		 0.087571689605917102 0.99528517395369187 0.041696782700025199 -0 -0.42989977870695412 2.7755575615628901e-17 0.90287661408838771 -0
		 -123.68911395248179 -91.66460869742528 158.46185117011345 1;
	setAttr ".pm[21]" -type "matrix" 1.1053869674535073e-15 -1 -2.5986393433006923e-15 -0
		 0.29283649027787167 2.7041161330888375e-15 -0.95616253323466827 0 0.95616253323466804 2.9107710584857666e-16 0.29283649027787156 -0
		 -115.06321628795575 -2.7478603241623809e-13 54.703347772061569 1;
	setAttr ".pm[22]" -type "matrix" 1.1053869674535065e-15 -0.99999999999999978 -2.5986393433006911e-15 -0
		 0.2928364902778714 2.7041161330888379e-15 -0.95616253323466782 0 0.95616253323466804 2.9107710584857646e-16 0.29283649027787134 -0
		 -106.45775348884374 -2.7216633846358822e-13 57.338876184562388 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 21 ".ma";
	setAttr -s 23 ".dpf[0:22]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4;
	setAttr -s 21 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 21 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "53211983-42D2-3ABF-4892-6FA0BB032C8F";
	setAttr -s 22 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 24 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.6653345369377348e-15 -5.5511151231258061e-17
		 2.7755575615628909e-16 0 -6.4932526533514924e-17 91.92083740234375 -17.8120231628418 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48498222235983168 -0.48498222235982991 -0.51457967701311391 0.51457967701311202 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 48.216235386891505 7.549516567451115e-15
		 -1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 0.99999999999999989 0.99999999999999978 0
		 -5.5511151231257827e-17 0 0 25.663567734195372 -2.9261124455606329e-13 51.788038380615177 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.17666562107621878 0 0.98427092730089005 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 5.5511151231257847e-16 -1.6653345369377279e-16
		 -2.4980018054066022e-15 0 17.420447116772323 43.223419189453153 -3.702635262362918 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.40049450591547059 0.56880366192423981 0.52832066642592879 0.4867687524280504 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -6.7671562797855261e-15 2.2963402013242205e-16
		 -2.3214936917259637e-15 0 29.033138028958266 2.8890488163959486e-16 2.130740966923901e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011519070491459314 0.1097691990934775 0.034255913578733761 0.99329983707351699 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 30.023549134080067 3.0643518283897008e-15
		 9.8796776796206171e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 5.0241705624611266e-15 -4.463250096262801e-30
		 1.7767112166177914e-15 0 -36.14182183713833 -2.5668356329333609e-13 57.920461636601303 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.57732147361210173 -3.240128707810305e-15 -0.81651694171422518 4.582576786394244e-15 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 1.6653345369377348e-16 0 0 21.141965876387012
		 -3.330669073875303e-16 1.4560178194835621e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.21629233478603799 0 0.97632864646736883 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 21.207361722917422 -5.5163339174324458e-14
		 4.5180542255527053e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -3.7976430386299712e-15 -3.8857805861880469e-16
		 4.1736563689299032e-31 0 53.364894813539429 9.4146912488213376e-14 -19.794507824601865 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.98416474316818825 -8.9571374655537026e-17 -0.17725619398118128 4.9731965328358049e-16 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -1.5707963267948937 -0.29107452788266797
		 -6.664100733437818e-16 0 -0.86755197435697085 0.38951086489427528 14.171667482333802 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -6.1062266354383639e-16 -2.2204460492503052e-16
		 2.55351295663786e-15 0 17.420467579862176 -43.223399999999984 -3.7026680445650584 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52832066642592668 -0.48676875242805207 0.40049450591546876 0.56880366192424159 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -1.3183898417423741e-16 -6.0823741876436639e-17
		 2.4572358037211472e-15 0 -29.033174294282702 -8.3770397722560119e-05 2.8023218682449169e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011519070491454375 0.10976919909347761 0.034255913578733282 0.9932998370735171 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -30.023551356750971 6.7156087013131582e-05
		 -6.3452489570181569e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 -4.4408920985006262e-16 0 0 -71.372740718588517
		 -1.9761969838327786e-14 1.2586453764836663 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.99897472614043503 0 0.045271365482418967 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 75.079694505141319 1.5987211554602254e-14
		 5.6408870630075825e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 3.4416913763379849e-15 1.1102230246252835e-16
		 -7.382983113757291e-15 0 22.29083111218111 -13.624099999999988 0.92025706862172285 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.40518290060951362 0.57371424932763437 0.61993769943609656 0.3497942623742849 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -23.183203475726316 1.3330422504509443e-05
		 -0.00050288591586422626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -3.4416913763379809e-15 9.9920072216265292e-16
		 7.1609385088322565e-15 0 22.29069989782036 13.624135971069324 0.92023224127918013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.61993769943609911 -0.3497942623742839 0.4051829006095149 0.57371424932763138 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 23.183433041887728 7.2787168315263992e-15
		 2.2612417639623099e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000002 -3.7976430386299704e-15
		 -4.4408920985006262e-16 4.73467598836538e-31 0 63.750220912794987 -7.8009117087617066e-17
		 0.70533892793419284 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.98416474316818825 -8.9571374655536976e-17 -0.1772561939811812 4.9731965328358049e-16 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000002 -3.7976430386299704e-15
		 -4.4408920985006262e-16 4.73467598836538e-31 0 54.765989080590145 -1.2189376837067585e-16
		 0.17281814411708751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.98416474316818825 -8.9571374655536952e-17 -0.17725619398118114 4.9731965328358049e-16 1
		 1 1 yes;
	setAttr -s 22 ".m";
	setAttr -s 23 ".p";
	setAttr -s 24 ".g[0:23]" yes no no no no no no no no no no no no no 
		no no no no no no no no yes no;
	setAttr ".bp" yes;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "CE40409A-41E5-C0B3-768A-B98994A25FB1";
	setAttr ".txf" -type "matrix" 0.87759252213109529 0 0 0 0 0.87759252213109529 0 0
		 0 0 0.87759252213109529 0 -2.1743936050616368e-16 6.179998323039049e-30 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "BF72EE31-471B-7618-5558-4C85967078E8";
	setAttr ".txf" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "A4782EB8-44BD-DCA9-A388-BCBD13925DE5";
	setAttr ".txf" -type "matrix" 62.791339284639932 0 0 0 0 62.791339284639932 0 0
		 0 0 62.791339284639932 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "8708D07D-40B2-2791-B947-B88A96E94C1E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode animCurveTL -n "L_Back_Fin_02_Ctrl_translateX";
	rename -uid "9116805B-424E-8EE6-8CBC-62A3D20CC027";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 50 0 60 0 80 0 90 0 110 45;
createNode animCurveTL -n "L_Back_Fin_02_Ctrl_translateY";
	rename -uid "C31554FB-489C-9CF0-1AA1-D0A4016A1C5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 50 0 60 0 80 0 90 0 110 0;
createNode animCurveTL -n "L_Back_Fin_02_Ctrl_translateZ";
	rename -uid "0439F85A-41CF-A9A3-958A-9DA1C2198B9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 50 0 60 0 80 0 90 0 110 0;
createNode animCurveTA -n "L_Back_Fin_02_Ctrl_rotateX";
	rename -uid "EFFA6533-4AAB-B25A-A37D-1E9F34A8CF0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 50 0 60 0 80 0 90 0 110 0;
createNode animCurveTA -n "L_Back_Fin_02_Ctrl_rotateY";
	rename -uid "A4F9B710-4B4E-BCE6-B26E-96AED8002C78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 50 0 60 -20.80799259492019
		 80 31.295593078291851 90 0 110 0;
createNode animCurveTA -n "L_Back_Fin_02_Ctrl_rotateZ";
	rename -uid "B2E0FC6D-4B74-22D3-0550-1CBEE1CCF954";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 -48.693877915501901 40 48.694 50 0
		 60 0 80 0 90 0 110 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "5AA1B330-4431-D16E-2398-3C8C7A71B32E";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 36 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 13 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 30 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Geo_Layer.di" "JohnDOrcafellerRN.phl[1]";
connectAttr "JohnDOrcafellerRN.phl[2]" "skinCluster1.orggeom[0]";
connectAttr "JohnDOrcafellerRN.phl[3]" "JohnDOrcaFeller_GeoShapeTag.i";
connectAttr "JohnDOrcafellerRN.phl[4]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[19].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[5]" "JohnDOrcafellerRN.phl[6]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[19]" "JohnDOrcafellerRN.phl[7]"
		;
connectAttr "JohnDOrcafellerRN.phl[8]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[20].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[9]" "JohnDOrcafellerRN.phl[10]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[20]" "JohnDOrcafellerRN.phl[11]"
		;
connectAttr "JohnDOrcafellerRN.phl[12]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[22].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[13]" "JohnDOrcafellerRN.phl[14]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[22]" "JohnDOrcafellerRN.phl[15]"
		;
connectAttr "JohnDOrcafellerRN.phl[16]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[23].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[17]" "JohnDOrcafellerRN.phl[18]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[23]" "JohnDOrcafellerRN.phl[19]"
		;
connectAttr "JohnDOrcafellerRN.phl[20]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[24].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[21]" "JohnDOrcafellerRN.phl[22]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[24]" "JohnDOrcafellerRN.phl[23]"
		;
connectAttr "JohnDOrcafellerRN.phl[24]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[12].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[25]" "JohnDOrcafellerRN.phl[26]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[12]" "JohnDOrcafellerRN.phl[27]"
		;
connectAttr "JohnDOrcafellerRN.phl[28]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[13].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[29]" "JohnDOrcafellerRN.phl[30]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[13]" "JohnDOrcafellerRN.phl[31]"
		;
connectAttr "JohnDOrcafellerRN.phl[32]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[14].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[33]" "JohnDOrcafellerRN.phl[34]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[14]" "JohnDOrcafellerRN.phl[35]"
		;
connectAttr "JohnDOrcafellerRN.phl[36]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[15].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[37]" "JohnDOrcafellerRN.phl[38]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[15]" "JohnDOrcafellerRN.phl[39]"
		;
connectAttr "JohnDOrcafellerRN.phl[40]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[16].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[41]" "JohnDOrcafellerRN.phl[42]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[16]" "JohnDOrcafellerRN.phl[43]"
		;
connectAttr "JohnDOrcafellerRN.phl[44]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[17].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[45]" "JohnDOrcafellerRN.phl[46]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[17]" "JohnDOrcafellerRN.phl[47]"
		;
connectAttr "JohnDOrcafellerRN.phl[48]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[7].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[49]" "JohnDOrcafellerRN.phl[50]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[7]" "JohnDOrcafellerRN.phl[51]"
		;
connectAttr "JohnDOrcafellerRN.phl[52]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[8].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[53]" "JohnDOrcafellerRN.phl[54]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[8]" "JohnDOrcafellerRN.phl[55]"
		;
connectAttr "JohnDOrcafellerRN.phl[56]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[9].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[57]" "JohnDOrcafellerRN.phl[58]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[9]" "JohnDOrcafellerRN.phl[59]"
		;
connectAttr "JohnDOrcafellerRN.phl[60]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[10].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[61]" "JohnDOrcafellerRN.phl[62]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[10]" "JohnDOrcafellerRN.phl[63]"
		;
connectAttr "JohnDOrcafellerRN.phl[64]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[3].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[65]" "JohnDOrcafellerRN.phl[66]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[3]" "JohnDOrcafellerRN.phl[67]"
		;
connectAttr "JohnDOrcafellerRN.phl[68]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[4].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[69]" "JohnDOrcafellerRN.phl[70]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[4]" "JohnDOrcafellerRN.phl[71]"
		;
connectAttr "JohnDOrcafellerRN.phl[72]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[5].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[73]" "JohnDOrcafellerRN.phl[74]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[5]" "JohnDOrcafellerRN.phl[75]"
		;
connectAttr "JohnDOrcafellerRN.phl[76]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[1].gco"
		;
connectAttr "JohnDOrcafellerRN.phl[77]" "JohnDOrcafellerRN.phl[78]";
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[1]" "JohnDOrcafellerRN.phl[79]"
		;
connectAttr "JohnDOrcafellerRN.phl[80]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[25].gco"
		;
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[25]" "JohnDOrcafellerRN.phl[81]"
		;
connectAttr "JohnDOrcafellerRN.phl[82]" "JohnDOrcafellerRN.phl[83]";
connectAttr "JohnDOrcafellerRN.phl[84]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[2].gco"
		;
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[2]" "JohnDOrcafellerRN.phl[85]"
		;
connectAttr "JohnDOrcafellerRN.phl[86]" "JohnDOrcafellerRN.phl[87]";
connectAttr "JohnDOrcafellerRN.phl[88]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[6].gco"
		;
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[6]" "JohnDOrcafellerRN.phl[89]"
		;
connectAttr "JohnDOrcafellerRN.phl[90]" "JohnDOrcafellerRN.phl[91]";
connectAttr "JohnDOrcafellerRN.phl[92]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[11].gco"
		;
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[11]" "JohnDOrcafellerRN.phl[93]"
		;
connectAttr "JohnDOrcafellerRN.phl[94]" "JohnDOrcafellerRN.phl[95]";
connectAttr "JohnDOrcafellerRN.phl[96]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[21].gco"
		;
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[21]" "JohnDOrcafellerRN.phl[97]"
		;
connectAttr "JohnDOrcafellerRN.phl[98]" "JohnDOrcafellerRN.phl[99]";
connectAttr "JohnDOrcafellerRN.phl[100]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[18].gco"
		;
connectAttr "JohnDOrcaFeller_GeoShapeDeformed.iog.og[18]" "JohnDOrcafellerRN.phl[101]"
		;
connectAttr "JohnDOrcafellerRN.phl[102]" "JohnDOrcafellerRN.phl[103]";
connectAttr "JohnDOrcafellerRN.phl[104]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[1].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[105]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[2].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[106]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[3].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[107]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[4].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[108]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[5].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[109]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[6].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[110]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[7].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[111]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[8].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[112]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[9].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[113]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[10].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[114]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[11].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[115]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[12].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[116]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[13].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[117]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[14].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[118]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[15].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[119]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[16].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[120]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[17].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[121]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[18].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[122]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[19].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[123]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[20].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[124]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[21].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[125]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[22].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[126]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[23].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[127]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[24].gid"
		;
connectAttr "JohnDOrcafellerRN.phl[128]" "JohnDOrcaFeller_GeoShapeDeformed.iog.og[25].gid"
		;
connectAttr "Geo_Layer.di" "Geo.do";
connectAttr "Joint_Layer.di" "Joints.do";
connectAttr "Joint_Layer.di" "ROOT_Jnt.do";
connectAttr "Spine_01_Jnt_scaleConstraint1.csx" "Spine_01_Jnt.sx";
connectAttr "Spine_01_Jnt_scaleConstraint1.csy" "Spine_01_Jnt.sy";
connectAttr "Spine_01_Jnt_scaleConstraint1.csz" "Spine_01_Jnt.sz";
connectAttr "ROOT_Jnt.s" "Spine_01_Jnt.is";
connectAttr "Spine_01_Jnt_parentConstraint1.crx" "Spine_01_Jnt.rx";
connectAttr "Spine_01_Jnt_parentConstraint1.cry" "Spine_01_Jnt.ry";
connectAttr "Spine_01_Jnt_parentConstraint1.crz" "Spine_01_Jnt.rz";
connectAttr "Joint_Layer.di" "Spine_01_Jnt.do";
connectAttr "Spine_01_Jnt_parentConstraint1.ctx" "Spine_01_Jnt.tx";
connectAttr "Spine_01_Jnt_parentConstraint1.cty" "Spine_01_Jnt.ty";
connectAttr "Spine_01_Jnt_parentConstraint1.ctz" "Spine_01_Jnt.tz";
connectAttr "Spine_01_Jnt.s" "Spine_02_Jnt.is";
connectAttr "Spine_02_Jnt_scaleConstraint1.csx" "Spine_02_Jnt.sx";
connectAttr "Spine_02_Jnt_scaleConstraint1.csy" "Spine_02_Jnt.sy";
connectAttr "Spine_02_Jnt_scaleConstraint1.csz" "Spine_02_Jnt.sz";
connectAttr "Spine_02_Jnt_parentConstraint1.crx" "Spine_02_Jnt.rx";
connectAttr "Spine_02_Jnt_parentConstraint1.cry" "Spine_02_Jnt.ry";
connectAttr "Spine_02_Jnt_parentConstraint1.crz" "Spine_02_Jnt.rz";
connectAttr "Joint_Layer.di" "Spine_02_Jnt.do";
connectAttr "Spine_02_Jnt_parentConstraint1.ctx" "Spine_02_Jnt.tx";
connectAttr "Spine_02_Jnt_parentConstraint1.cty" "Spine_02_Jnt.ty";
connectAttr "Spine_02_Jnt_parentConstraint1.ctz" "Spine_02_Jnt.tz";
connectAttr "Spine_02_Jnt.s" "Hat_Jnt.is";
connectAttr "Hat_Jnt_parentConstraint1.ctx" "Hat_Jnt.tx";
connectAttr "Hat_Jnt_parentConstraint1.cty" "Hat_Jnt.ty";
connectAttr "Hat_Jnt_parentConstraint1.ctz" "Hat_Jnt.tz";
connectAttr "Hat_Jnt_parentConstraint1.crx" "Hat_Jnt.rx";
connectAttr "Hat_Jnt_parentConstraint1.cry" "Hat_Jnt.ry";
connectAttr "Hat_Jnt_parentConstraint1.crz" "Hat_Jnt.rz";
connectAttr "Hat_Jnt_scaleConstraint1.csx" "Hat_Jnt.sx";
connectAttr "Hat_Jnt_scaleConstraint1.csy" "Hat_Jnt.sy";
connectAttr "Hat_Jnt_scaleConstraint1.csz" "Hat_Jnt.sz";
connectAttr "Joint_Layer.di" "Hat_Jnt.do";
connectAttr "Hat_Jnt.ro" "Hat_Jnt_parentConstraint1.cro";
connectAttr "Hat_Jnt.pim" "Hat_Jnt_parentConstraint1.cpim";
connectAttr "Hat_Jnt.rp" "Hat_Jnt_parentConstraint1.crp";
connectAttr "Hat_Jnt.rpt" "Hat_Jnt_parentConstraint1.crt";
connectAttr "Hat_Jnt.jo" "Hat_Jnt_parentConstraint1.cjo";
connectAttr "Hat_Ctrl.t" "Hat_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Hat_Ctrl.rp" "Hat_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Hat_Ctrl.rpt" "Hat_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Hat_Ctrl.r" "Hat_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Hat_Ctrl.ro" "Hat_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Hat_Ctrl.s" "Hat_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Hat_Ctrl.pm" "Hat_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Hat_Jnt_parentConstraint1.w0" "Hat_Jnt_parentConstraint1.tg[0].tw";
connectAttr "Hat_Jnt.ssc" "Hat_Jnt_scaleConstraint1.tsc";
connectAttr "Hat_Jnt.pim" "Hat_Jnt_scaleConstraint1.cpim";
connectAttr "Hat_Ctrl.s" "Hat_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Hat_Ctrl.pm" "Hat_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Hat_Jnt_scaleConstraint1.w0" "Hat_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "L_Fin_01_Jnt_scaleConstraint1.csx" "L_Fin_01_Jnt.sx";
connectAttr "L_Fin_01_Jnt_scaleConstraint1.csy" "L_Fin_01_Jnt.sy";
connectAttr "L_Fin_01_Jnt_scaleConstraint1.csz" "L_Fin_01_Jnt.sz";
connectAttr "Spine_02_Jnt.s" "L_Fin_01_Jnt.is";
connectAttr "L_Fin_01_Jnt_parentConstraint1.crx" "L_Fin_01_Jnt.rx";
connectAttr "L_Fin_01_Jnt_parentConstraint1.cry" "L_Fin_01_Jnt.ry";
connectAttr "L_Fin_01_Jnt_parentConstraint1.crz" "L_Fin_01_Jnt.rz";
connectAttr "Joint_Layer.di" "L_Fin_01_Jnt.do";
connectAttr "L_Fin_01_Jnt_parentConstraint1.ctx" "L_Fin_01_Jnt.tx";
connectAttr "L_Fin_01_Jnt_parentConstraint1.cty" "L_Fin_01_Jnt.ty";
connectAttr "L_Fin_01_Jnt_parentConstraint1.ctz" "L_Fin_01_Jnt.tz";
connectAttr "L_Fin_01_Jnt.s" "L_Fin_02_Jnt.is";
connectAttr "L_Fin_02_Jnt_scaleConstraint1.csx" "L_Fin_02_Jnt.sx";
connectAttr "L_Fin_02_Jnt_scaleConstraint1.csy" "L_Fin_02_Jnt.sy";
connectAttr "L_Fin_02_Jnt_scaleConstraint1.csz" "L_Fin_02_Jnt.sz";
connectAttr "L_Fin_02_Jnt_parentConstraint1.crx" "L_Fin_02_Jnt.rx";
connectAttr "L_Fin_02_Jnt_parentConstraint1.cry" "L_Fin_02_Jnt.ry";
connectAttr "L_Fin_02_Jnt_parentConstraint1.crz" "L_Fin_02_Jnt.rz";
connectAttr "Joint_Layer.di" "L_Fin_02_Jnt.do";
connectAttr "L_Fin_02_Jnt_parentConstraint1.ctx" "L_Fin_02_Jnt.tx";
connectAttr "L_Fin_02_Jnt_parentConstraint1.cty" "L_Fin_02_Jnt.ty";
connectAttr "L_Fin_02_Jnt_parentConstraint1.ctz" "L_Fin_02_Jnt.tz";
connectAttr "L_Fin_02_Jnt.s" "L_Fin_03_Jnt.is";
connectAttr "L_Fin_03_Jnt_parentConstraint1.crx" "L_Fin_03_Jnt.rx";
connectAttr "L_Fin_03_Jnt_parentConstraint1.cry" "L_Fin_03_Jnt.ry";
connectAttr "L_Fin_03_Jnt_parentConstraint1.crz" "L_Fin_03_Jnt.rz";
connectAttr "Joint_Layer.di" "L_Fin_03_Jnt.do";
connectAttr "L_Fin_03_Jnt_parentConstraint1.ctx" "L_Fin_03_Jnt.tx";
connectAttr "L_Fin_03_Jnt_parentConstraint1.cty" "L_Fin_03_Jnt.ty";
connectAttr "L_Fin_03_Jnt_parentConstraint1.ctz" "L_Fin_03_Jnt.tz";
connectAttr "L_Fin_03_Jnt_scaleConstraint1.csx" "L_Fin_03_Jnt.sx";
connectAttr "L_Fin_03_Jnt_scaleConstraint1.csy" "L_Fin_03_Jnt.sy";
connectAttr "L_Fin_03_Jnt_scaleConstraint1.csz" "L_Fin_03_Jnt.sz";
connectAttr "L_Fin_03_Jnt.ro" "L_Fin_03_Jnt_parentConstraint1.cro";
connectAttr "L_Fin_03_Jnt.pim" "L_Fin_03_Jnt_parentConstraint1.cpim";
connectAttr "L_Fin_03_Jnt.rp" "L_Fin_03_Jnt_parentConstraint1.crp";
connectAttr "L_Fin_03_Jnt.rpt" "L_Fin_03_Jnt_parentConstraint1.crt";
connectAttr "L_Fin_03_Jnt.jo" "L_Fin_03_Jnt_parentConstraint1.cjo";
connectAttr "L_Fin_03_Ctrl.t" "L_Fin_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Fin_03_Ctrl.rp" "L_Fin_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Fin_03_Ctrl.rpt" "L_Fin_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Fin_03_Ctrl.r" "L_Fin_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Fin_03_Ctrl.ro" "L_Fin_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Fin_03_Ctrl.s" "L_Fin_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Fin_03_Ctrl.pm" "L_Fin_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Fin_03_Jnt_parentConstraint1.w0" "L_Fin_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fin_03_Jnt.ssc" "L_Fin_03_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fin_03_Jnt.pim" "L_Fin_03_Jnt_scaleConstraint1.cpim";
connectAttr "L_Fin_03_Ctrl.s" "L_Fin_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Fin_03_Ctrl.pm" "L_Fin_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Fin_03_Jnt_scaleConstraint1.w0" "L_Fin_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Fin_02_Jnt.ro" "L_Fin_02_Jnt_parentConstraint1.cro";
connectAttr "L_Fin_02_Jnt.pim" "L_Fin_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Fin_02_Jnt.rp" "L_Fin_02_Jnt_parentConstraint1.crp";
connectAttr "L_Fin_02_Jnt.rpt" "L_Fin_02_Jnt_parentConstraint1.crt";
connectAttr "L_Fin_02_Jnt.jo" "L_Fin_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Fin_02_Ctrl.t" "L_Fin_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Fin_02_Ctrl.rp" "L_Fin_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Fin_02_Ctrl.rpt" "L_Fin_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Fin_02_Ctrl.r" "L_Fin_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Fin_02_Ctrl.ro" "L_Fin_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Fin_02_Ctrl.s" "L_Fin_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Fin_02_Ctrl.pm" "L_Fin_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Fin_02_Jnt_parentConstraint1.w0" "L_Fin_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fin_02_Jnt.ssc" "L_Fin_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fin_02_Jnt.pim" "L_Fin_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_Fin_02_Ctrl.s" "L_Fin_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Fin_02_Ctrl.pm" "L_Fin_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Fin_02_Jnt_scaleConstraint1.w0" "L_Fin_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Fin_01_Jnt.ro" "L_Fin_01_Jnt_parentConstraint1.cro";
connectAttr "L_Fin_01_Jnt.pim" "L_Fin_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Fin_01_Jnt.rp" "L_Fin_01_Jnt_parentConstraint1.crp";
connectAttr "L_Fin_01_Jnt.rpt" "L_Fin_01_Jnt_parentConstraint1.crt";
connectAttr "L_Fin_01_Jnt.jo" "L_Fin_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Fin_01_Ctrl.t" "L_Fin_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Fin_01_Ctrl.rp" "L_Fin_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Fin_01_Ctrl.rpt" "L_Fin_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Fin_01_Ctrl.r" "L_Fin_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Fin_01_Ctrl.ro" "L_Fin_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Fin_01_Ctrl.s" "L_Fin_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Fin_01_Ctrl.pm" "L_Fin_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Fin_01_Jnt_parentConstraint1.w0" "L_Fin_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fin_01_Jnt.ssc" "L_Fin_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fin_01_Jnt.pim" "L_Fin_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_Fin_01_Ctrl.s" "L_Fin_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Fin_01_Ctrl.pm" "L_Fin_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Fin_01_Jnt_scaleConstraint1.w0" "L_Fin_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fin_01_Jnt_scaleConstraint1.csx" "R_Fin_01_Jnt.sx";
connectAttr "R_Fin_01_Jnt_scaleConstraint1.csy" "R_Fin_01_Jnt.sy";
connectAttr "R_Fin_01_Jnt_scaleConstraint1.csz" "R_Fin_01_Jnt.sz";
connectAttr "Spine_02_Jnt.s" "R_Fin_01_Jnt.is";
connectAttr "R_Fin_01_Jnt_parentConstraint1.crx" "R_Fin_01_Jnt.rx";
connectAttr "R_Fin_01_Jnt_parentConstraint1.cry" "R_Fin_01_Jnt.ry";
connectAttr "R_Fin_01_Jnt_parentConstraint1.crz" "R_Fin_01_Jnt.rz";
connectAttr "Joint_Layer.di" "R_Fin_01_Jnt.do";
connectAttr "R_Fin_01_Jnt_parentConstraint1.ctx" "R_Fin_01_Jnt.tx";
connectAttr "R_Fin_01_Jnt_parentConstraint1.cty" "R_Fin_01_Jnt.ty";
connectAttr "R_Fin_01_Jnt_parentConstraint1.ctz" "R_Fin_01_Jnt.tz";
connectAttr "R_Fin_01_Jnt.s" "R_Fin_02_Jnt.is";
connectAttr "R_Fin_02_Jnt_scaleConstraint1.csx" "R_Fin_02_Jnt.sx";
connectAttr "R_Fin_02_Jnt_scaleConstraint1.csy" "R_Fin_02_Jnt.sy";
connectAttr "R_Fin_02_Jnt_scaleConstraint1.csz" "R_Fin_02_Jnt.sz";
connectAttr "R_Fin_02_Jnt_parentConstraint1.crx" "R_Fin_02_Jnt.rx";
connectAttr "R_Fin_02_Jnt_parentConstraint1.cry" "R_Fin_02_Jnt.ry";
connectAttr "R_Fin_02_Jnt_parentConstraint1.crz" "R_Fin_02_Jnt.rz";
connectAttr "Joint_Layer.di" "R_Fin_02_Jnt.do";
connectAttr "R_Fin_02_Jnt_parentConstraint1.ctx" "R_Fin_02_Jnt.tx";
connectAttr "R_Fin_02_Jnt_parentConstraint1.cty" "R_Fin_02_Jnt.ty";
connectAttr "R_Fin_02_Jnt_parentConstraint1.ctz" "R_Fin_02_Jnt.tz";
connectAttr "R_Fin_02_Jnt.s" "R_Fin_03_Jnt.is";
connectAttr "R_Fin_03_Jnt_parentConstraint1.crx" "R_Fin_03_Jnt.rx";
connectAttr "R_Fin_03_Jnt_parentConstraint1.cry" "R_Fin_03_Jnt.ry";
connectAttr "R_Fin_03_Jnt_parentConstraint1.crz" "R_Fin_03_Jnt.rz";
connectAttr "Joint_Layer.di" "R_Fin_03_Jnt.do";
connectAttr "R_Fin_03_Jnt_parentConstraint1.ctx" "R_Fin_03_Jnt.tx";
connectAttr "R_Fin_03_Jnt_parentConstraint1.cty" "R_Fin_03_Jnt.ty";
connectAttr "R_Fin_03_Jnt_parentConstraint1.ctz" "R_Fin_03_Jnt.tz";
connectAttr "R_Fin_03_Jnt_scaleConstraint1.csx" "R_Fin_03_Jnt.sx";
connectAttr "R_Fin_03_Jnt_scaleConstraint1.csy" "R_Fin_03_Jnt.sy";
connectAttr "R_Fin_03_Jnt_scaleConstraint1.csz" "R_Fin_03_Jnt.sz";
connectAttr "R_Fin_03_Jnt.ro" "R_Fin_03_Jnt_parentConstraint1.cro";
connectAttr "R_Fin_03_Jnt.pim" "R_Fin_03_Jnt_parentConstraint1.cpim";
connectAttr "R_Fin_03_Jnt.rp" "R_Fin_03_Jnt_parentConstraint1.crp";
connectAttr "R_Fin_03_Jnt.rpt" "R_Fin_03_Jnt_parentConstraint1.crt";
connectAttr "R_Fin_03_Jnt.jo" "R_Fin_03_Jnt_parentConstraint1.cjo";
connectAttr "R_Fin_03_Ctrl.t" "R_Fin_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Fin_03_Ctrl.rp" "R_Fin_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Fin_03_Ctrl.rpt" "R_Fin_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Fin_03_Ctrl.r" "R_Fin_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Fin_03_Ctrl.ro" "R_Fin_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Fin_03_Ctrl.s" "R_Fin_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Fin_03_Ctrl.pm" "R_Fin_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Fin_03_Jnt_parentConstraint1.w0" "R_Fin_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fin_03_Jnt.ssc" "R_Fin_03_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fin_03_Jnt.pim" "R_Fin_03_Jnt_scaleConstraint1.cpim";
connectAttr "R_Fin_03_Ctrl.s" "R_Fin_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Fin_03_Ctrl.pm" "R_Fin_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Fin_03_Jnt_scaleConstraint1.w0" "R_Fin_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fin_02_Jnt.ro" "R_Fin_02_Jnt_parentConstraint1.cro";
connectAttr "R_Fin_02_Jnt.pim" "R_Fin_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Fin_02_Jnt.rp" "R_Fin_02_Jnt_parentConstraint1.crp";
connectAttr "R_Fin_02_Jnt.rpt" "R_Fin_02_Jnt_parentConstraint1.crt";
connectAttr "R_Fin_02_Jnt.jo" "R_Fin_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Fin_02_Ctrl.t" "R_Fin_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Fin_02_Ctrl.rp" "R_Fin_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Fin_02_Ctrl.rpt" "R_Fin_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Fin_02_Ctrl.r" "R_Fin_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Fin_02_Ctrl.ro" "R_Fin_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Fin_02_Ctrl.s" "R_Fin_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Fin_02_Ctrl.pm" "R_Fin_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Fin_02_Jnt_parentConstraint1.w0" "R_Fin_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fin_02_Jnt.ssc" "R_Fin_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fin_02_Jnt.pim" "R_Fin_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_Fin_02_Ctrl.s" "R_Fin_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Fin_02_Ctrl.pm" "R_Fin_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Fin_02_Jnt_scaleConstraint1.w0" "R_Fin_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fin_01_Jnt.ro" "R_Fin_01_Jnt_parentConstraint1.cro";
connectAttr "R_Fin_01_Jnt.pim" "R_Fin_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Fin_01_Jnt.rp" "R_Fin_01_Jnt_parentConstraint1.crp";
connectAttr "R_Fin_01_Jnt.rpt" "R_Fin_01_Jnt_parentConstraint1.crt";
connectAttr "R_Fin_01_Jnt.jo" "R_Fin_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Fin_01_Ctrl.t" "R_Fin_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Fin_01_Ctrl.rp" "R_Fin_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Fin_01_Ctrl.rpt" "R_Fin_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Fin_01_Ctrl.r" "R_Fin_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Fin_01_Ctrl.ro" "R_Fin_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Fin_01_Ctrl.s" "R_Fin_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Fin_01_Ctrl.pm" "R_Fin_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Fin_01_Jnt_parentConstraint1.w0" "R_Fin_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fin_01_Jnt.ssc" "R_Fin_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fin_01_Jnt.pim" "R_Fin_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_Fin_01_Ctrl.s" "R_Fin_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Fin_01_Ctrl.pm" "R_Fin_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Fin_01_Jnt_scaleConstraint1.w0" "R_Fin_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Jnt.ro" "Spine_02_Jnt_parentConstraint1.cro";
connectAttr "Spine_02_Jnt.pim" "Spine_02_Jnt_parentConstraint1.cpim";
connectAttr "Spine_02_Jnt.rp" "Spine_02_Jnt_parentConstraint1.crp";
connectAttr "Spine_02_Jnt.rpt" "Spine_02_Jnt_parentConstraint1.crt";
connectAttr "Spine_02_Jnt.jo" "Spine_02_Jnt_parentConstraint1.cjo";
connectAttr "Spine_02_Ctrl.t" "Spine_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_02_Ctrl.rp" "Spine_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_02_Ctrl.rpt" "Spine_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Spine_02_Ctrl.r" "Spine_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_02_Ctrl.ro" "Spine_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_02_Ctrl.s" "Spine_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_02_Jnt_parentConstraint1.w0" "Spine_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Jnt.ssc" "Spine_02_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_02_Jnt.pim" "Spine_02_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_02_Ctrl.s" "Spine_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_02_Jnt_scaleConstraint1.w0" "Spine_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Jnt.s" "Jaw_Jnt.is";
connectAttr "Jaw_Jnt_scaleConstraint1.csx" "Jaw_Jnt.sx";
connectAttr "Jaw_Jnt_scaleConstraint1.csy" "Jaw_Jnt.sy";
connectAttr "Jaw_Jnt_scaleConstraint1.csz" "Jaw_Jnt.sz";
connectAttr "Joint_Layer.di" "Jaw_Jnt.do";
connectAttr "Jaw_Jnt_parentConstraint1.ctx" "Jaw_Jnt.tx";
connectAttr "Jaw_Jnt_parentConstraint1.cty" "Jaw_Jnt.ty";
connectAttr "Jaw_Jnt_parentConstraint1.ctz" "Jaw_Jnt.tz";
connectAttr "Jaw_Jnt_parentConstraint1.crx" "Jaw_Jnt.rx";
connectAttr "Jaw_Jnt_parentConstraint1.cry" "Jaw_Jnt.ry";
connectAttr "Jaw_Jnt_parentConstraint1.crz" "Jaw_Jnt.rz";
connectAttr "Jaw_Jnt.s" "Tongue_Jnt.is";
connectAttr "Tongue_Jnt_aimConstraint1.crx" "Tongue_Jnt.rx";
connectAttr "Tongue_Jnt_aimConstraint1.cry" "Tongue_Jnt.ry";
connectAttr "Tongue_Jnt_aimConstraint1.crz" "Tongue_Jnt.rz";
connectAttr "Joint_Layer.di" "Tongue_Jnt.do";
connectAttr "Tongue_Jnt.pim" "Tongue_Jnt_aimConstraint1.cpim";
connectAttr "Tongue_Jnt.t" "Tongue_Jnt_aimConstraint1.ct";
connectAttr "Tongue_Jnt.rp" "Tongue_Jnt_aimConstraint1.crp";
connectAttr "Tongue_Jnt.rpt" "Tongue_Jnt_aimConstraint1.crt";
connectAttr "Tongue_Jnt.ro" "Tongue_Jnt_aimConstraint1.cro";
connectAttr "Tongue_Jnt.jo" "Tongue_Jnt_aimConstraint1.cjo";
connectAttr "Tongue_Jnt.is" "Tongue_Jnt_aimConstraint1.is";
connectAttr "Tongue_Ctrl.t" "Tongue_Jnt_aimConstraint1.tg[0].tt";
connectAttr "Tongue_Ctrl.rp" "Tongue_Jnt_aimConstraint1.tg[0].trp";
connectAttr "Tongue_Ctrl.rpt" "Tongue_Jnt_aimConstraint1.tg[0].trt";
connectAttr "Tongue_Ctrl.pm" "Tongue_Jnt_aimConstraint1.tg[0].tpm";
connectAttr "Tongue_Jnt_aimConstraint1.w0" "Tongue_Jnt_aimConstraint1.tg[0].tw";
connectAttr "Jaw_Jnt.ro" "Jaw_Jnt_parentConstraint1.cro";
connectAttr "Jaw_Jnt.pim" "Jaw_Jnt_parentConstraint1.cpim";
connectAttr "Jaw_Jnt.rp" "Jaw_Jnt_parentConstraint1.crp";
connectAttr "Jaw_Jnt.rpt" "Jaw_Jnt_parentConstraint1.crt";
connectAttr "Jaw_Jnt.jo" "Jaw_Jnt_parentConstraint1.cjo";
connectAttr "Jaw_Ctrl.t" "Jaw_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Jaw_Ctrl.rp" "Jaw_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Jaw_Ctrl.rpt" "Jaw_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Jaw_Ctrl.r" "Jaw_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Jaw_Ctrl.ro" "Jaw_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Jaw_Ctrl.s" "Jaw_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Jaw_Ctrl.pm" "Jaw_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_Jnt_parentConstraint1.w0" "Jaw_Jnt_parentConstraint1.tg[0].tw";
connectAttr "Jaw_Jnt.ssc" "Jaw_Jnt_scaleConstraint1.tsc";
connectAttr "Jaw_Jnt.pim" "Jaw_Jnt_scaleConstraint1.cpim";
connectAttr "Jaw_Ctrl.s" "Jaw_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Jaw_Ctrl.pm" "Jaw_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Jaw_Jnt_scaleConstraint1.w0" "Jaw_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Tail_01_Jnt_scaleConstraint1.csx" "Tail_01_Jnt.sx";
connectAttr "Tail_01_Jnt_scaleConstraint1.csy" "Tail_01_Jnt.sy";
connectAttr "Tail_01_Jnt_scaleConstraint1.csz" "Tail_01_Jnt.sz";
connectAttr "Spine_01_Jnt.s" "Tail_01_Jnt.is";
connectAttr "Tail_01_Jnt_parentConstraint1.crx" "Tail_01_Jnt.rx";
connectAttr "Tail_01_Jnt_parentConstraint1.cry" "Tail_01_Jnt.ry";
connectAttr "Tail_01_Jnt_parentConstraint1.crz" "Tail_01_Jnt.rz";
connectAttr "Joint_Layer.di" "Tail_01_Jnt.do";
connectAttr "Tail_01_Jnt_parentConstraint1.ctx" "Tail_01_Jnt.tx";
connectAttr "Tail_01_Jnt_parentConstraint1.cty" "Tail_01_Jnt.ty";
connectAttr "Tail_01_Jnt_parentConstraint1.ctz" "Tail_01_Jnt.tz";
connectAttr "Tail_01_Jnt.s" "Tail_02_Jnt.is";
connectAttr "Tail_02_Jnt_scaleConstraint1.csx" "Tail_02_Jnt.sx";
connectAttr "Tail_02_Jnt_scaleConstraint1.csy" "Tail_02_Jnt.sy";
connectAttr "Tail_02_Jnt_scaleConstraint1.csz" "Tail_02_Jnt.sz";
connectAttr "Tail_02_Jnt_parentConstraint1.crx" "Tail_02_Jnt.rx";
connectAttr "Tail_02_Jnt_parentConstraint1.cry" "Tail_02_Jnt.ry";
connectAttr "Tail_02_Jnt_parentConstraint1.crz" "Tail_02_Jnt.rz";
connectAttr "Joint_Layer.di" "Tail_02_Jnt.do";
connectAttr "Tail_02_Jnt_parentConstraint1.ctx" "Tail_02_Jnt.tx";
connectAttr "Tail_02_Jnt_parentConstraint1.cty" "Tail_02_Jnt.ty";
connectAttr "Tail_02_Jnt_parentConstraint1.ctz" "Tail_02_Jnt.tz";
connectAttr "Tail_02_Jnt.s" "R_Back_Fin_01_Jnt.is";
connectAttr "R_Back_Fin_01_Jnt_scaleConstraint1.csx" "R_Back_Fin_01_Jnt.sx";
connectAttr "R_Back_Fin_01_Jnt_scaleConstraint1.csy" "R_Back_Fin_01_Jnt.sy";
connectAttr "R_Back_Fin_01_Jnt_scaleConstraint1.csz" "R_Back_Fin_01_Jnt.sz";
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.crx" "R_Back_Fin_01_Jnt.rx";
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.cry" "R_Back_Fin_01_Jnt.ry";
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.crz" "R_Back_Fin_01_Jnt.rz";
connectAttr "Joint_Layer.di" "R_Back_Fin_01_Jnt.do";
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.ctx" "R_Back_Fin_01_Jnt.tx";
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.cty" "R_Back_Fin_01_Jnt.ty";
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.ctz" "R_Back_Fin_01_Jnt.tz";
connectAttr "R_Back_Fin_01_Jnt.s" "R_Back_Fin_02_Jnt.is";
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.crx" "R_Back_Fin_02_Jnt.rx";
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.cry" "R_Back_Fin_02_Jnt.ry";
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.crz" "R_Back_Fin_02_Jnt.rz";
connectAttr "Joint_Layer.di" "R_Back_Fin_02_Jnt.do";
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.ctx" "R_Back_Fin_02_Jnt.tx";
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.cty" "R_Back_Fin_02_Jnt.ty";
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.ctz" "R_Back_Fin_02_Jnt.tz";
connectAttr "R_Back_Fin_02_Jnt_scaleConstraint1.csx" "R_Back_Fin_02_Jnt.sx";
connectAttr "R_Back_Fin_02_Jnt_scaleConstraint1.csy" "R_Back_Fin_02_Jnt.sy";
connectAttr "R_Back_Fin_02_Jnt_scaleConstraint1.csz" "R_Back_Fin_02_Jnt.sz";
connectAttr "R_Back_Fin_02_Jnt.ro" "R_Back_Fin_02_Jnt_parentConstraint1.cro";
connectAttr "R_Back_Fin_02_Jnt.pim" "R_Back_Fin_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Back_Fin_02_Jnt.rp" "R_Back_Fin_02_Jnt_parentConstraint1.crp";
connectAttr "R_Back_Fin_02_Jnt.rpt" "R_Back_Fin_02_Jnt_parentConstraint1.crt";
connectAttr "R_Back_Fin_02_Jnt.jo" "R_Back_Fin_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Back_Fin_02_Ctrl.t" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Back_Fin_02_Ctrl.rp" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Back_Fin_02_Ctrl.rpt" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Back_Fin_02_Ctrl.r" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Back_Fin_02_Ctrl.ro" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Back_Fin_02_Ctrl.s" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Back_Fin_02_Ctrl.pm" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Back_Fin_02_Jnt_parentConstraint1.w0" "R_Back_Fin_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Back_Fin_02_Jnt.ssc" "R_Back_Fin_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_Back_Fin_02_Jnt.pim" "R_Back_Fin_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_Back_Fin_02_Ctrl.s" "R_Back_Fin_02_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Back_Fin_02_Ctrl.pm" "R_Back_Fin_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Back_Fin_02_Jnt_scaleConstraint1.w0" "R_Back_Fin_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Back_Fin_01_Jnt.ro" "R_Back_Fin_01_Jnt_parentConstraint1.cro";
connectAttr "R_Back_Fin_01_Jnt.pim" "R_Back_Fin_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Back_Fin_01_Jnt.rp" "R_Back_Fin_01_Jnt_parentConstraint1.crp";
connectAttr "R_Back_Fin_01_Jnt.rpt" "R_Back_Fin_01_Jnt_parentConstraint1.crt";
connectAttr "R_Back_Fin_01_Jnt.jo" "R_Back_Fin_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Back_Fin_01_Ctrl.t" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Back_Fin_01_Ctrl.rp" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Back_Fin_01_Ctrl.rpt" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Back_Fin_01_Ctrl.r" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Back_Fin_01_Ctrl.ro" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Back_Fin_01_Ctrl.s" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Back_Fin_01_Ctrl.pm" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Back_Fin_01_Jnt_parentConstraint1.w0" "R_Back_Fin_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Back_Fin_01_Jnt.ssc" "R_Back_Fin_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_Back_Fin_01_Jnt.pim" "R_Back_Fin_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_Back_Fin_01_Ctrl.s" "R_Back_Fin_01_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Back_Fin_01_Ctrl.pm" "R_Back_Fin_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Back_Fin_01_Jnt_scaleConstraint1.w0" "R_Back_Fin_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Tail_02_Jnt.s" "L_Back_Fin_01_Jnt.is";
connectAttr "L_Back_Fin_01_Jnt_scaleConstraint1.csx" "L_Back_Fin_01_Jnt.sx";
connectAttr "L_Back_Fin_01_Jnt_scaleConstraint1.csy" "L_Back_Fin_01_Jnt.sy";
connectAttr "L_Back_Fin_01_Jnt_scaleConstraint1.csz" "L_Back_Fin_01_Jnt.sz";
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.crx" "L_Back_Fin_01_Jnt.rx";
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.cry" "L_Back_Fin_01_Jnt.ry";
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.crz" "L_Back_Fin_01_Jnt.rz";
connectAttr "Joint_Layer.di" "L_Back_Fin_01_Jnt.do";
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.ctx" "L_Back_Fin_01_Jnt.tx";
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.cty" "L_Back_Fin_01_Jnt.ty";
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.ctz" "L_Back_Fin_01_Jnt.tz";
connectAttr "L_Back_Fin_01_Jnt.s" "L_Back_Fin_02_Jnt.is";
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.crx" "L_Back_Fin_02_Jnt.rx";
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.cry" "L_Back_Fin_02_Jnt.ry";
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.crz" "L_Back_Fin_02_Jnt.rz";
connectAttr "Joint_Layer.di" "L_Back_Fin_02_Jnt.do";
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.ctx" "L_Back_Fin_02_Jnt.tx";
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.cty" "L_Back_Fin_02_Jnt.ty";
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.ctz" "L_Back_Fin_02_Jnt.tz";
connectAttr "L_Back_Fin_02_Jnt_scaleConstraint1.csx" "L_Back_Fin_02_Jnt.sx";
connectAttr "L_Back_Fin_02_Jnt_scaleConstraint1.csy" "L_Back_Fin_02_Jnt.sy";
connectAttr "L_Back_Fin_02_Jnt_scaleConstraint1.csz" "L_Back_Fin_02_Jnt.sz";
connectAttr "L_Back_Fin_02_Jnt.ro" "L_Back_Fin_02_Jnt_parentConstraint1.cro";
connectAttr "L_Back_Fin_02_Jnt.pim" "L_Back_Fin_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Back_Fin_02_Jnt.rp" "L_Back_Fin_02_Jnt_parentConstraint1.crp";
connectAttr "L_Back_Fin_02_Jnt.rpt" "L_Back_Fin_02_Jnt_parentConstraint1.crt";
connectAttr "L_Back_Fin_02_Jnt.jo" "L_Back_Fin_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Back_Fin_02_Ctrl.t" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Back_Fin_02_Ctrl.rp" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Back_Fin_02_Ctrl.rpt" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Back_Fin_02_Ctrl.r" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Back_Fin_02_Ctrl.ro" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Back_Fin_02_Ctrl.s" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Back_Fin_02_Ctrl.pm" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Back_Fin_02_Jnt_parentConstraint1.w0" "L_Back_Fin_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Back_Fin_02_Jnt.ssc" "L_Back_Fin_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_Back_Fin_02_Jnt.pim" "L_Back_Fin_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_Back_Fin_02_Ctrl.s" "L_Back_Fin_02_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Back_Fin_02_Ctrl.pm" "L_Back_Fin_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Back_Fin_02_Jnt_scaleConstraint1.w0" "L_Back_Fin_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Back_Fin_01_Jnt.ro" "L_Back_Fin_01_Jnt_parentConstraint1.cro";
connectAttr "L_Back_Fin_01_Jnt.pim" "L_Back_Fin_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Back_Fin_01_Jnt.rp" "L_Back_Fin_01_Jnt_parentConstraint1.crp";
connectAttr "L_Back_Fin_01_Jnt.rpt" "L_Back_Fin_01_Jnt_parentConstraint1.crt";
connectAttr "L_Back_Fin_01_Jnt.jo" "L_Back_Fin_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Back_Fin_01_Ctrl.t" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Back_Fin_01_Ctrl.rp" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Back_Fin_01_Ctrl.rpt" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Back_Fin_01_Ctrl.r" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Back_Fin_01_Ctrl.ro" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Back_Fin_01_Ctrl.s" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Back_Fin_01_Ctrl.pm" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Back_Fin_01_Jnt_parentConstraint1.w0" "L_Back_Fin_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Back_Fin_01_Jnt.ssc" "L_Back_Fin_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_Back_Fin_01_Jnt.pim" "L_Back_Fin_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_Back_Fin_01_Ctrl.s" "L_Back_Fin_01_Jnt_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Back_Fin_01_Ctrl.pm" "L_Back_Fin_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Back_Fin_01_Jnt_scaleConstraint1.w0" "L_Back_Fin_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Tail_02_Jnt.ro" "Tail_02_Jnt_parentConstraint1.cro";
connectAttr "Tail_02_Jnt.pim" "Tail_02_Jnt_parentConstraint1.cpim";
connectAttr "Tail_02_Jnt.rp" "Tail_02_Jnt_parentConstraint1.crp";
connectAttr "Tail_02_Jnt.rpt" "Tail_02_Jnt_parentConstraint1.crt";
connectAttr "Tail_02_Jnt.jo" "Tail_02_Jnt_parentConstraint1.cjo";
connectAttr "Tail_02_Ctrl.t" "Tail_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Tail_02_Ctrl.rp" "Tail_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Tail_02_Ctrl.rpt" "Tail_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Tail_02_Ctrl.r" "Tail_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Tail_02_Ctrl.ro" "Tail_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Tail_02_Ctrl.s" "Tail_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Tail_02_Ctrl.pm" "Tail_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Tail_02_Jnt_parentConstraint1.w0" "Tail_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Tail_02_Jnt.ssc" "Tail_02_Jnt_scaleConstraint1.tsc";
connectAttr "Tail_02_Jnt.pim" "Tail_02_Jnt_scaleConstraint1.cpim";
connectAttr "Tail_02_Ctrl.s" "Tail_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Tail_02_Ctrl.pm" "Tail_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Tail_02_Jnt_scaleConstraint1.w0" "Tail_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Tail_01_Jnt.ro" "Tail_01_Jnt_parentConstraint1.cro";
connectAttr "Tail_01_Jnt.pim" "Tail_01_Jnt_parentConstraint1.cpim";
connectAttr "Tail_01_Jnt.rp" "Tail_01_Jnt_parentConstraint1.crp";
connectAttr "Tail_01_Jnt.rpt" "Tail_01_Jnt_parentConstraint1.crt";
connectAttr "Tail_01_Jnt.jo" "Tail_01_Jnt_parentConstraint1.cjo";
connectAttr "Tail_01_Ctrl.t" "Tail_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Tail_01_Ctrl.rp" "Tail_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Tail_01_Ctrl.rpt" "Tail_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Tail_01_Ctrl.r" "Tail_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Tail_01_Ctrl.ro" "Tail_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Tail_01_Ctrl.s" "Tail_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Tail_01_Ctrl.pm" "Tail_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Tail_01_Jnt_parentConstraint1.w0" "Tail_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Tail_01_Jnt.ssc" "Tail_01_Jnt_scaleConstraint1.tsc";
connectAttr "Tail_01_Jnt.pim" "Tail_01_Jnt_scaleConstraint1.cpim";
connectAttr "Tail_01_Ctrl.s" "Tail_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Tail_01_Ctrl.pm" "Tail_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Tail_01_Jnt_scaleConstraint1.w0" "Tail_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Top_Fin_01_Jnt_scaleConstraint1.csx" "Top_Fin_01_Jnt.sx";
connectAttr "Top_Fin_01_Jnt_scaleConstraint1.csy" "Top_Fin_01_Jnt.sy";
connectAttr "Top_Fin_01_Jnt_scaleConstraint1.csz" "Top_Fin_01_Jnt.sz";
connectAttr "Spine_01_Jnt.s" "Top_Fin_01_Jnt.is";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.crx" "Top_Fin_01_Jnt.rx";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.cry" "Top_Fin_01_Jnt.ry";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.crz" "Top_Fin_01_Jnt.rz";
connectAttr "Joint_Layer.di" "Top_Fin_01_Jnt.do";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.ctx" "Top_Fin_01_Jnt.tx";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.cty" "Top_Fin_01_Jnt.ty";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.ctz" "Top_Fin_01_Jnt.tz";
connectAttr "Top_Fin_01_Jnt.s" "Top_Fin_02_Jnt.is";
connectAttr "Top_Fin_02_Jnt_scaleConstraint1.csx" "Top_Fin_02_Jnt.sx";
connectAttr "Top_Fin_02_Jnt_scaleConstraint1.csy" "Top_Fin_02_Jnt.sy";
connectAttr "Top_Fin_02_Jnt_scaleConstraint1.csz" "Top_Fin_02_Jnt.sz";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.crx" "Top_Fin_02_Jnt.rx";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.cry" "Top_Fin_02_Jnt.ry";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.crz" "Top_Fin_02_Jnt.rz";
connectAttr "Joint_Layer.di" "Top_Fin_02_Jnt.do";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.ctx" "Top_Fin_02_Jnt.tx";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.cty" "Top_Fin_02_Jnt.ty";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.ctz" "Top_Fin_02_Jnt.tz";
connectAttr "Top_Fin_02_Jnt.s" "Top_Fin_03_Jnt.is";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.crx" "Top_Fin_03_Jnt.rx";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.cry" "Top_Fin_03_Jnt.ry";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.crz" "Top_Fin_03_Jnt.rz";
connectAttr "Joint_Layer.di" "Top_Fin_03_Jnt.do";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.ctx" "Top_Fin_03_Jnt.tx";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.cty" "Top_Fin_03_Jnt.ty";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.ctz" "Top_Fin_03_Jnt.tz";
connectAttr "Top_Fin_03_Jnt_scaleConstraint1.csx" "Top_Fin_03_Jnt.sx";
connectAttr "Top_Fin_03_Jnt_scaleConstraint1.csy" "Top_Fin_03_Jnt.sy";
connectAttr "Top_Fin_03_Jnt_scaleConstraint1.csz" "Top_Fin_03_Jnt.sz";
connectAttr "Top_Fin_03_Jnt.ro" "Top_Fin_03_Jnt_parentConstraint1.cro";
connectAttr "Top_Fin_03_Jnt.pim" "Top_Fin_03_Jnt_parentConstraint1.cpim";
connectAttr "Top_Fin_03_Jnt.rp" "Top_Fin_03_Jnt_parentConstraint1.crp";
connectAttr "Top_Fin_03_Jnt.rpt" "Top_Fin_03_Jnt_parentConstraint1.crt";
connectAttr "Top_Fin_03_Jnt.jo" "Top_Fin_03_Jnt_parentConstraint1.cjo";
connectAttr "Top_Fin_03_Ctrl.t" "Top_Fin_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Top_Fin_03_Ctrl.rp" "Top_Fin_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Top_Fin_03_Ctrl.rpt" "Top_Fin_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Top_Fin_03_Ctrl.r" "Top_Fin_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Top_Fin_03_Ctrl.ro" "Top_Fin_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Top_Fin_03_Ctrl.s" "Top_Fin_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Top_Fin_03_Ctrl.pm" "Top_Fin_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Top_Fin_03_Jnt_parentConstraint1.w0" "Top_Fin_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Top_Fin_03_Jnt.ssc" "Top_Fin_03_Jnt_scaleConstraint1.tsc";
connectAttr "Top_Fin_03_Jnt.pim" "Top_Fin_03_Jnt_scaleConstraint1.cpim";
connectAttr "Top_Fin_03_Ctrl.s" "Top_Fin_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Top_Fin_03_Ctrl.pm" "Top_Fin_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Top_Fin_03_Jnt_scaleConstraint1.w0" "Top_Fin_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Top_Fin_02_Jnt.ro" "Top_Fin_02_Jnt_parentConstraint1.cro";
connectAttr "Top_Fin_02_Jnt.pim" "Top_Fin_02_Jnt_parentConstraint1.cpim";
connectAttr "Top_Fin_02_Jnt.rp" "Top_Fin_02_Jnt_parentConstraint1.crp";
connectAttr "Top_Fin_02_Jnt.rpt" "Top_Fin_02_Jnt_parentConstraint1.crt";
connectAttr "Top_Fin_02_Jnt.jo" "Top_Fin_02_Jnt_parentConstraint1.cjo";
connectAttr "Top_Fin_02_Ctrl.t" "Top_Fin_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Top_Fin_02_Ctrl.rp" "Top_Fin_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Top_Fin_02_Ctrl.rpt" "Top_Fin_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Top_Fin_02_Ctrl.r" "Top_Fin_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Top_Fin_02_Ctrl.ro" "Top_Fin_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Top_Fin_02_Ctrl.s" "Top_Fin_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Top_Fin_02_Ctrl.pm" "Top_Fin_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Top_Fin_02_Jnt_parentConstraint1.w0" "Top_Fin_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Top_Fin_02_Jnt.ssc" "Top_Fin_02_Jnt_scaleConstraint1.tsc";
connectAttr "Top_Fin_02_Jnt.pim" "Top_Fin_02_Jnt_scaleConstraint1.cpim";
connectAttr "Top_Fin_02_Ctrl.s" "Top_Fin_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Top_Fin_02_Ctrl.pm" "Top_Fin_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Top_Fin_02_Jnt_scaleConstraint1.w0" "Top_Fin_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Top_Fin_01_Jnt.ro" "Top_Fin_01_Jnt_parentConstraint1.cro";
connectAttr "Top_Fin_01_Jnt.pim" "Top_Fin_01_Jnt_parentConstraint1.cpim";
connectAttr "Top_Fin_01_Jnt.rp" "Top_Fin_01_Jnt_parentConstraint1.crp";
connectAttr "Top_Fin_01_Jnt.rpt" "Top_Fin_01_Jnt_parentConstraint1.crt";
connectAttr "Top_Fin_01_Jnt.jo" "Top_Fin_01_Jnt_parentConstraint1.cjo";
connectAttr "Top_Fin_01_Ctrl.t" "Top_Fin_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Top_Fin_01_Ctrl.rp" "Top_Fin_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Top_Fin_01_Ctrl.rpt" "Top_Fin_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Top_Fin_01_Ctrl.r" "Top_Fin_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Top_Fin_01_Ctrl.ro" "Top_Fin_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Top_Fin_01_Ctrl.s" "Top_Fin_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Top_Fin_01_Ctrl.pm" "Top_Fin_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Top_Fin_01_Jnt_parentConstraint1.w0" "Top_Fin_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Top_Fin_01_Jnt.ssc" "Top_Fin_01_Jnt_scaleConstraint1.tsc";
connectAttr "Top_Fin_01_Jnt.pim" "Top_Fin_01_Jnt_scaleConstraint1.cpim";
connectAttr "Top_Fin_01_Ctrl.s" "Top_Fin_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Top_Fin_01_Ctrl.pm" "Top_Fin_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Top_Fin_01_Jnt_scaleConstraint1.w0" "Top_Fin_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_Jnt.ro" "Spine_01_Jnt_parentConstraint1.cro";
connectAttr "Spine_01_Jnt.pim" "Spine_01_Jnt_parentConstraint1.cpim";
connectAttr "Spine_01_Jnt.rp" "Spine_01_Jnt_parentConstraint1.crp";
connectAttr "Spine_01_Jnt.rpt" "Spine_01_Jnt_parentConstraint1.crt";
connectAttr "Spine_01_Jnt.jo" "Spine_01_Jnt_parentConstraint1.cjo";
connectAttr "Spine_01_Ctrl.t" "Spine_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_01_Ctrl.rp" "Spine_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_01_Ctrl.rpt" "Spine_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Spine_01_Ctrl.r" "Spine_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_01_Ctrl.ro" "Spine_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_01_Ctrl.s" "Spine_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_01_Jnt_parentConstraint1.w0" "Spine_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_Jnt.ssc" "Spine_01_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_01_Jnt.pim" "Spine_01_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_01_Ctrl.s" "Spine_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_01_Jnt_scaleConstraint1.w0" "Spine_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Control_Layer.di" "Controls.do";
connectAttr "Control_Layer.di" "Transform_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Transform_Ctrl.do";
connectAttr "Control_Layer.di" "Spine_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Spine_01_Ctrl.do";
connectAttr "Control_Layer.di" "Spine_02_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Spine_02_Ctrl.do";
connectAttr "transformGeometry3.og" "Spine_02_CtrlShape.cr";
connectAttr "Control_Layer.di" "Jaw_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Jaw_Ctrl.do";
connectAttr "Control_Layer.di" "Tongue_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Tongue_Ctrl.do";
connectAttr "Control_Layer.di" "Hat_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Hat_Ctrl.do";
connectAttr "Control_Layer.di" "L_Fin_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "L_Fin_01_Ctrl.do";
connectAttr "Control_Layer.di" "L_Fin_02_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "L_Fin_02_Ctrl.do";
connectAttr "Control_Layer.di" "L_Fin_03_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "L_Fin_03_Ctrl.do";
connectAttr "Control_Layer.di" "R_Fin_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "R_Fin_01_Ctrl.do";
connectAttr "Control_Layer.di" "R_Fin_02_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "R_Fin_02_Ctrl.do";
connectAttr "Control_Layer.di" "R_Fin_03_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "R_Fin_03_Ctrl.do";
connectAttr "Control_Layer.di" "Tail_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Tail_01_Ctrl.do";
connectAttr "Control_Layer.di" "Tail_02_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Tail_02_Ctrl.do";
connectAttr "Control_Layer.di" "L_Back_Fin_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "L_Back_Fin_01_Ctrl.do";
connectAttr "Control_Layer.di" "L_Back_Fin_02_Ctrl_Grp.do";
connectAttr "L_Back_Fin_02_Ctrl_rotateX.o" "L_Back_Fin_02_Ctrl.rx";
connectAttr "L_Back_Fin_02_Ctrl_rotateY.o" "L_Back_Fin_02_Ctrl.ry";
connectAttr "L_Back_Fin_02_Ctrl_rotateZ.o" "L_Back_Fin_02_Ctrl.rz";
connectAttr "Control_Layer.di" "L_Back_Fin_02_Ctrl.do";
connectAttr "L_Back_Fin_02_Ctrl_translateX.o" "L_Back_Fin_02_Ctrl.tx";
connectAttr "L_Back_Fin_02_Ctrl_translateY.o" "L_Back_Fin_02_Ctrl.ty";
connectAttr "L_Back_Fin_02_Ctrl_translateZ.o" "L_Back_Fin_02_Ctrl.tz";
connectAttr "Control_Layer.di" "R_Back_Fin_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "R_Back_Fin_01_Ctrl.do";
connectAttr "Control_Layer.di" "R_Back_Fin_02_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "R_Back_Fin_02_Ctrl.do";
connectAttr "Control_Layer.di" "Top_Fin_01_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Top_Fin_01_Ctrl.do";
connectAttr "Control_Layer.di" "Top_Fin_02_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Top_Fin_02_Ctrl.do";
connectAttr "Control_Layer.di" "Top_Fin_03_Ctrl_Grp.do";
connectAttr "Control_Layer.di" "Top_Fin_03_Ctrl.do";
connectAttr "skinCluster1.og[0]" "JohnDOrcaFeller_GeoShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "JohnDOrcafellerRNfosterParent1.msg" "JohnDOrcafellerRN.fp";
connectAttr "layerManager.dli[1]" "Joint_Layer.id";
connectAttr "layerManager.dli[2]" "Control_Layer.id";
connectAttr "layerManager.dli[3]" "Geo_Layer.id";
connectAttr "JohnDOrcaFeller_GeoShapeTag.w" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "ROOT_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Spine_01_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "Spine_02_Jnt.wm" "skinCluster1.ma[2]";
connectAttr "Hat_Jnt.wm" "skinCluster1.ma[3]";
connectAttr "L_Fin_01_Jnt.wm" "skinCluster1.ma[4]";
connectAttr "L_Fin_02_Jnt.wm" "skinCluster1.ma[5]";
connectAttr "L_Fin_03_Jnt.wm" "skinCluster1.ma[6]";
connectAttr "Top_Fin_01_Jnt.wm" "skinCluster1.ma[7]";
connectAttr "Top_Fin_02_Jnt.wm" "skinCluster1.ma[8]";
connectAttr "Top_Fin_03_Jnt.wm" "skinCluster1.ma[9]";
connectAttr "Tongue_Jnt.wm" "skinCluster1.ma[11]";
connectAttr "R_Fin_01_Jnt.wm" "skinCluster1.ma[12]";
connectAttr "R_Fin_02_Jnt.wm" "skinCluster1.ma[13]";
connectAttr "R_Fin_03_Jnt.wm" "skinCluster1.ma[14]";
connectAttr "Tail_01_Jnt.wm" "skinCluster1.ma[15]";
connectAttr "Tail_02_Jnt.wm" "skinCluster1.ma[16]";
connectAttr "R_Back_Fin_01_Jnt.wm" "skinCluster1.ma[17]";
connectAttr "R_Back_Fin_02_Jnt.wm" "skinCluster1.ma[18]";
connectAttr "L_Back_Fin_01_Jnt.wm" "skinCluster1.ma[19]";
connectAttr "L_Back_Fin_02_Jnt.wm" "skinCluster1.ma[20]";
connectAttr "Jaw_Jnt.wm" "skinCluster1.ma[22]";
connectAttr "ROOT_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Spine_01_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "Spine_02_Jnt.liw" "skinCluster1.lw[2]";
connectAttr "Hat_Jnt.liw" "skinCluster1.lw[3]";
connectAttr "L_Fin_01_Jnt.liw" "skinCluster1.lw[4]";
connectAttr "L_Fin_02_Jnt.liw" "skinCluster1.lw[5]";
connectAttr "L_Fin_03_Jnt.liw" "skinCluster1.lw[6]";
connectAttr "Top_Fin_01_Jnt.liw" "skinCluster1.lw[7]";
connectAttr "Top_Fin_02_Jnt.liw" "skinCluster1.lw[8]";
connectAttr "Top_Fin_03_Jnt.liw" "skinCluster1.lw[9]";
connectAttr "Tongue_Jnt.liw" "skinCluster1.lw[11]";
connectAttr "R_Fin_01_Jnt.liw" "skinCluster1.lw[12]";
connectAttr "R_Fin_02_Jnt.liw" "skinCluster1.lw[13]";
connectAttr "R_Fin_03_Jnt.liw" "skinCluster1.lw[14]";
connectAttr "Tail_01_Jnt.liw" "skinCluster1.lw[15]";
connectAttr "Tail_02_Jnt.liw" "skinCluster1.lw[16]";
connectAttr "R_Back_Fin_01_Jnt.liw" "skinCluster1.lw[17]";
connectAttr "R_Back_Fin_02_Jnt.liw" "skinCluster1.lw[18]";
connectAttr "L_Back_Fin_01_Jnt.liw" "skinCluster1.lw[19]";
connectAttr "L_Back_Fin_02_Jnt.liw" "skinCluster1.lw[20]";
connectAttr "Jaw_Jnt.liw" "skinCluster1.lw[22]";
connectAttr "ROOT_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Spine_01_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "Spine_02_Jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "Hat_Jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_Fin_01_Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Fin_02_Jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Fin_03_Jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "Top_Fin_01_Jnt.obcc" "skinCluster1.ifcl[7]";
connectAttr "Top_Fin_02_Jnt.obcc" "skinCluster1.ifcl[8]";
connectAttr "Top_Fin_03_Jnt.obcc" "skinCluster1.ifcl[9]";
connectAttr "Tongue_Jnt.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_Fin_01_Jnt.obcc" "skinCluster1.ifcl[12]";
connectAttr "R_Fin_02_Jnt.obcc" "skinCluster1.ifcl[13]";
connectAttr "R_Fin_03_Jnt.obcc" "skinCluster1.ifcl[14]";
connectAttr "Tail_01_Jnt.obcc" "skinCluster1.ifcl[15]";
connectAttr "Tail_02_Jnt.obcc" "skinCluster1.ifcl[16]";
connectAttr "R_Back_Fin_01_Jnt.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_Back_Fin_02_Jnt.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Back_Fin_01_Jnt.obcc" "skinCluster1.ifcl[19]";
connectAttr "L_Back_Fin_02_Jnt.obcc" "skinCluster1.ifcl[20]";
connectAttr "Jaw_Jnt.obcc" "skinCluster1.ifcl[22]";
connectAttr "R_Back_Fin_01_Jnt.msg" "skinCluster1.ptt";
connectAttr "Joints.msg" "bindPose1.m[0]";
connectAttr "ROOT_Jnt.msg" "bindPose1.m[1]";
connectAttr "Spine_01_Jnt.msg" "bindPose1.m[2]";
connectAttr "Spine_02_Jnt.msg" "bindPose1.m[3]";
connectAttr "Hat_Jnt.msg" "bindPose1.m[4]";
connectAttr "L_Fin_01_Jnt.msg" "bindPose1.m[5]";
connectAttr "L_Fin_02_Jnt.msg" "bindPose1.m[6]";
connectAttr "L_Fin_03_Jnt.msg" "bindPose1.m[7]";
connectAttr "Top_Fin_01_Jnt.msg" "bindPose1.m[8]";
connectAttr "Top_Fin_02_Jnt.msg" "bindPose1.m[9]";
connectAttr "Top_Fin_03_Jnt.msg" "bindPose1.m[10]";
connectAttr "Tongue_Jnt.msg" "bindPose1.m[12]";
connectAttr "R_Fin_01_Jnt.msg" "bindPose1.m[13]";
connectAttr "R_Fin_02_Jnt.msg" "bindPose1.m[14]";
connectAttr "R_Fin_03_Jnt.msg" "bindPose1.m[15]";
connectAttr "Tail_01_Jnt.msg" "bindPose1.m[16]";
connectAttr "Tail_02_Jnt.msg" "bindPose1.m[17]";
connectAttr "R_Back_Fin_01_Jnt.msg" "bindPose1.m[18]";
connectAttr "R_Back_Fin_02_Jnt.msg" "bindPose1.m[19]";
connectAttr "L_Back_Fin_01_Jnt.msg" "bindPose1.m[20]";
connectAttr "L_Back_Fin_02_Jnt.msg" "bindPose1.m[21]";
connectAttr "Jaw_Jnt.msg" "bindPose1.m[23]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[3]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[23]" "bindPose1.p[12]";
connectAttr "bindPose1.m[3]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[2]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[17]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[3]" "bindPose1.p[22]";
connectAttr "bindPose1.m[3]" "bindPose1.p[23]";
connectAttr "ROOT_Jnt.bps" "bindPose1.wm[1]";
connectAttr "Spine_01_Jnt.bps" "bindPose1.wm[2]";
connectAttr "Spine_02_Jnt.bps" "bindPose1.wm[3]";
connectAttr "Hat_Jnt.bps" "bindPose1.wm[4]";
connectAttr "L_Fin_01_Jnt.bps" "bindPose1.wm[5]";
connectAttr "L_Fin_02_Jnt.bps" "bindPose1.wm[6]";
connectAttr "L_Fin_03_Jnt.bps" "bindPose1.wm[7]";
connectAttr "Top_Fin_01_Jnt.bps" "bindPose1.wm[8]";
connectAttr "Top_Fin_02_Jnt.bps" "bindPose1.wm[9]";
connectAttr "Top_Fin_03_Jnt.bps" "bindPose1.wm[10]";
connectAttr "Tongue_Jnt.bps" "bindPose1.wm[12]";
connectAttr "R_Fin_01_Jnt.bps" "bindPose1.wm[13]";
connectAttr "R_Fin_02_Jnt.bps" "bindPose1.wm[14]";
connectAttr "R_Fin_03_Jnt.bps" "bindPose1.wm[15]";
connectAttr "Tail_01_Jnt.bps" "bindPose1.wm[16]";
connectAttr "Tail_02_Jnt.bps" "bindPose1.wm[17]";
connectAttr "R_Back_Fin_01_Jnt.bps" "bindPose1.wm[18]";
connectAttr "R_Back_Fin_02_Jnt.bps" "bindPose1.wm[19]";
connectAttr "L_Back_Fin_01_Jnt.bps" "bindPose1.wm[20]";
connectAttr "L_Back_Fin_02_Jnt.bps" "bindPose1.wm[21]";
connectAttr "Jaw_Jnt.bps" "bindPose1.wm[23]";
connectAttr "transformGeometry2.og" "transformGeometry3.ig";
connectAttr "transformGeometry1.og" "transformGeometry2.ig";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of JohnDOrcafellerRig.ma
