<?php
if ((isset($_GET["dna"])) && (!empty($_GET["dna"]))){
    $dna = $_GET["dna"];
}else{
    $dna = "Y_FFFFFFCC00AA_FFFFFFCC00AA_FFFFFFCC00AA_FFFFFFCC00AA_FFFFFFCC00AA_FFFFFFCC00AA_FFFFFFCC00AA_FFFFFFCC00AA"; //default
}

//##############################################################

$materials = array();
$parsedDna = explode("_", $dna);
$model = $parsedDna[0];
if ($model == "Y" && count($parsedDna) == 9){
    $name = "MALE TUXEDO";
    $modelThreeDim = " https://aleziakurdis.github.io/tuxedoAvatar/tuxedo/models/MALE_TUXEDO.fbx";
    $materials["HEAD"] = $parsedDna[1];
    $materials["BODY"] = $parsedDna[2];
    $materials["EYES"] = $parsedDna[3];
    $materials["HAIR"] = $parsedDna[4];
    $materials["SUITE"] = $parsedDna[5];
    $materials["PANTS"] = $parsedDna[6];
    $materials["SHIRT"] = $parsedDna[7];    
    $materials["SHOES"] = $parsedDna[8];
    $joinDefinition = "joint = jointEyeLeft = LeftEye\n";
    $joinDefinition = $joinDefinition."joint = jointRoot = Hips\n";
    $joinDefinition = $joinDefinition."joint = jointEyeRight = RightEye\n";
    $joinDefinition = $joinDefinition."joint = jointLean = Spine\n";
    $joinDefinition = $joinDefinition."joint = jointNeck = Neck\n";
    $joinDefinition = $joinDefinition."joint = jointHead = Head\n";
    $joinDefinition = $joinDefinition."joint = jointRightHand = RightHand\n";
    $joinDefinition = $joinDefinition."joint = jointLeftHand = LeftHand\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandPinky4_end = 64\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandPinky4 = 34\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandPinky1 = 31\n";
    $joinDefinition = $joinDefinition."jointIndex = EyeRight = 2\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftForeArm = 58\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandMiddle4_end = 74\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandThumb4_end = 84\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandIndex4 = 49\n";
    $joinDefinition = $joinDefinition."jointIndex = RightToeBase_end = 12\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftToeBase = 16\n";
    $joinDefinition = $joinDefinition."jointIndex = RightEye_end = 24\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandMiddle3 = 72\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandIndex4_end = 79\n";
    $joinDefinition = $joinDefinition."jointIndex = Teeth = 3\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandPinky1 = 60\n";
    $joinDefinition = $joinDefinition."jointIndex = Neck = 21\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandThumb3 = 53\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandThumb1 = 51\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandMiddle2 = 42\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandMiddle3 = 43\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandRing2 = 66\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandPinky4 = 63\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandRing4_end = 69\n";
    $joinDefinition = $joinDefinition."jointIndex = RightUpLeg = 8\n";
    $joinDefinition = $joinDefinition."jointIndex = Head = 22\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandMiddle4 = 44\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandRing3 = 38\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandRing4_end = 40\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandThumb3 = 82\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftUpLeg = 13\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandIndex2 = 76\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftEye_end = 26\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftEye = 25\n";
    $joinDefinition = $joinDefinition."jointIndex = RightToeBase = 11\n";
    $joinDefinition = $joinDefinition."jointIndex = RightForeArm = 29\n";
    $joinDefinition = $joinDefinition."jointIndex = EyeLeft = 4\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandIndex3 = 77\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftFoot = 15\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandIndex4_end = 50\n";
    $joinDefinition = $joinDefinition."jointIndex = SUITE1 = 1\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandThumb1 = 80\n";
    $joinDefinition = $joinDefinition."jointIndex = HAIR = 0\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandMiddle4_end = 45\n";
    $joinDefinition = $joinDefinition."jointIndex = RightArm = 28\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandMiddle1 = 41\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandIndex1 = 46\n";
    $joinDefinition = $joinDefinition."jointIndex = Spine = 18\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHand = 30\n";
    $joinDefinition = $joinDefinition."jointIndex = RightShoulder = 27\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandIndex3 = 48\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandRing3 = 67\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftLeg = 14\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftShoulder = 56\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandRing2 = 37\n";
    $joinDefinition = $joinDefinition."jointIndex = Spine1 = 19\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandThumb4_end = 55\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandIndex4 = 78\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandThumb2 = 52\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandThumb4 = 83\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandRing1 = 36\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandPinky4_end = 35\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandMiddle1 = 70\n";
    $joinDefinition = $joinDefinition."jointIndex = Armature = 6\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandPinky2 = 32\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandPinky2 = 61\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandRing1 = 65\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandPinky3 = 62\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandPinky3 = 33\n";
    $joinDefinition = $joinDefinition."jointIndex = RightEye = 23\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftArm = 57\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHand = 59\n";
    $joinDefinition = $joinDefinition."jointIndex = RightLeg = 9\n";
    $joinDefinition = $joinDefinition."jointIndex = Spine2 = 20\n";
    $joinDefinition = $joinDefinition."jointIndex = Body = 5\n";
    $joinDefinition = $joinDefinition."jointIndex = Hips = 7\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftToeBase_end = 17\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandIndex2 = 47\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandThumb4 = 54\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandIndex1 = 75\n";
    $joinDefinition = $joinDefinition."jointIndex = RightFoot = 10\n";
    $joinDefinition = $joinDefinition."jointIndex = RightHandRing4 = 39\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandRing4 = 68\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandMiddle2 = 71\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandThumb2 = 81\n";
    $joinDefinition = $joinDefinition."jointIndex = LeftHandMiddle4 = 73\n"; 
} elseif ($model == "X" && count($parsedDna) == 7){
    $name = "FEMALE TUXEDO";
    //#############
    //TO BE DEFINED
    //#############
} else {
    echo("INVALIDE DNA!");
    exit;   
}

echo("name = ".$name."\n");
echo("scale = 1\n");
echo("filename = ".$modelThreeDim."\n");
echo("marketplaceID = {00000000-0000-0000-0000-000000000000}\n");
echo("texdir = textures\n");

echo($joinDefinition);

//Materials
echo("materialMap = [");

$materialMap = "";
foreach ($materials as $key => $value) {
    $materialContent = generateMaterialJson($model, $key, $value);
    $materialJson = '{"mat::'.$key.'": '.$materialContent.'},';
    $materialMap = $materialMap.$materialJson;
}

$materialMap = substr($materialMap,0,-1);
echo($materialMap);
echo("]\n");

//###################################################################################
function generateMaterialJson($thisModel, $matname, $genome) {
    $materialData = getMaterialData($genome);
    $content = '{"materials":[{';
    $content = $content.' "name": "'.$matname.'",';
    //ALBEDO
    if ($matname == "EYES") {
        $content = $content.' "albedo": {';
        $content = $content.' "red": 1,';
        $content = $content.' "green": 1,';
        $content = $content.' "blue": 1';
        $content = $content.' },';
    } else {
        $content = $content.' "albedo": {';
        $content = $content.' "red": '.$materialData["red"].',';
        $content = $content.' "green": '.$materialData["green"].',';
        $content = $content.' "blue": '.$materialData["blue"].'';
        $content = $content.' },';    
    }

    //ROUGHNESS & METALLIC
    if ($matname == "EYES"){
        $content = $content.' "roughness": 0.064,';
        $content = $content.' "metallic": 0.01,';
    } elseif ($matname == "BODY"){
        $content = $content.' "roughness": 0.65,';
        $content = $content.' "metallic": 0.01,';       
    } elseif ($matname == "HEAD"){
        $content = $content.' "metallic": 0.01,';       
    } else {
        $content = $content.' "roughness": '.$materialData["roughness"].',';
        $content = $content.' "metallic": '.$materialData["metallic"].',';    
    }

    //ALBEDO MAP
    if ($materialData["albedoMap"] != "0") {
        if ($matname == "EYES"){
            switch ($materialData["albedoMap"]) {
                case "A": //brown
                    $content = $content.' "albedoMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUXEDO_EYES_BROWN.jpg",';
                    break;
                case "B": //blue
                    $content = $content.' "albedoMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUXEDO_EYES_BLUE.jpg",';
                    break;
                case "C": //green
                    $content = $content.' "albedoMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUXEDO_EYES_GREEN.jpg",';
                    break;
            }            
        } elseif ($matname == "BODY"){
            if ($thisModel == "Y") {
                $content = $content.' "albedoMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUDEXO_BODY_ALBEDO.jpg",';            
            }
            if ($thisModel == "X") {
                //TBD
            }            
        } elseif ($matname == "HEAD"){
            if ($thisModel == "Y") {
                $content = $content.' "albedoMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUDEXO_HEAD_ALBEDO.jpg",';
                $content = $content.' "roughnessMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUDEXO_HEAD_ROUGHNESS.jpg",';            
            }
            if ($thisModel == "X") {
                //TBD
            }                    
        } else {
            //TBD
        }
    }

    //NORMAL MAP
    if ($materialData["normalMap"] != "0") {
        if ($matname == "EYES"){
            //none
        } elseif ($key == "BODY"){
            if ($thisModel == "Y") {
                $content = $content.' "normalMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUDEXO_BODY_NORMAL.jpg",';            
            }
            if ($thisModel == "X") {
                //TBD
            }            
        } elseif ($matname == "HEAD"){
             if ($thisModel == "Y") {
                $content = $content.' "normalMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUDEXO_HEAD_NORMAL.jpg",';
            }
            if ($thisModel == "X") {
                //TBD
            }           
        } elseif ($matname == "HAIR"){
            if ($thisModel == "Y") {
                $content = $content.' "normalMap": "https:/'.'/aleziakurdis.github.io/tuxedoAvatar/tuxedo/maps/MALE_TUXEDO_HAIR_NORMAL.jpg",';            
            }
            if ($thisModel == "X") {
                //TBD
            }        
        } else {
            if ($thisModel == "Y") {
                //TBD
            }
            if ($thisModel == "X") {
                //TBD
            }
        }        
    }

    $content = $content.' "cullFaceMode": "CULL_BACK",';
    $content = $content.' "defaultFallthrough": false';
    $content = $content.'}]}';
    
    return $content;
}

//###########################################################

function getMaterialData($thisGenome) {
    $data = array();
    $data["red"] = hexdec(substr($thisGenome,0,2))/255;
    $data["green"] = hexdec(substr($thisGenome,2,2))/255;
    $data["blue"] = hexdec(substr($thisGenome,4,2))/255;
    $data["roughness"] = hexdec(substr($thisGenome,6,2))/255;
    $data["metallic"] = hexdec(substr($thisGenome,8,2))/255;
    if ($data["metallic"] == 0) {
        $data["metallic"] = 0.01;
    }
    $data["albedoMap"] = substr($thisGenome,10,1);
    $data["normalMap"] = substr($thisGenome,11,1);
    return $data;
}



?>

