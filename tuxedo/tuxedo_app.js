"use strict";
//
//  tuxedo_app.js
//
//  Created by Alezia Kurdis, January 11th, 2021.
//
//  Generate a customized simple avatar, optimal for large event.
//
//
(function() {
    var jsMainFileName = "tuxedo_app.js";
    var ROOT = Script.resolvePath('').split(jsMainFileName)[0];
    
    var APP_NAME = "TUXEDO"; 
    var APP_URL = ROOT + "tuxedoUi.html"; 
    var APP_ICON_INACTIVE = ROOT + "icon_tuxedo_inactive.png";
    var APP_ICON_ACTIVE = ROOT + "icon_tuxedo_active.png"; 
    var appStatus = false;
    var chanel = "tuxedo.avatars.ak.vircadia";
    
    var modelID = Uuid.NULL;
    var FST = "http://metaverse.bashora.com/tuxedo/avatar.fst";
    
    var tablet = Tablet.getTablet("com.highfidelity.interface.tablet.system");

    tablet.screenChanged.connect(onScreenChanged);

    var button = tablet.addButton({
        text: APP_NAME,
        icon: APP_ICON_INACTIVE,
        activeIcon: APP_ICON_ACTIVE
    });


    function clicked(){
        if (appStatus === true) {
            tablet.webEventReceived.disconnect(onMoreAppWebEventReceived);
            tablet.gotoHomeScreen();
            appStatus = false;
            deleteDemo();
        }else{
            tablet.gotoWebScreen(APP_URL);
            tablet.webEventReceived.connect(onMoreAppWebEventReceived);
            appStatus = true;
            createDemo("");
        }

        button.editProperties({
            isActive: appStatus
        });
    }

    button.clicked.connect(clicked);

    function createDemo(dna) {
        var dnaParam = "";
        if (dna != ""){
            dnaParam = "?dna=" + dna;
        }
        modelID = Entities.addEntity({
                    type: "model",
                    name: "TUXEDO AVATAR DEMO",
                    modelURL: FST + dnaParam,
                    grab: {
                        grabbable: true
                    },
                    position: Vec3.sum(MyAvatar.position, Vec3.multiplyQbyV(MyAvatar.orientation, { x: 0, y: 0, z: -3 }))
                }, "local");
        
    }

    function updateDemo(dna) {
        var dnaParam = "";
        if (dna != ""){
            dnaParam = "?dna=" + dna;
        }
        Entities.editEntity(modelID, {
                modelURL: FST + dnaParam,
            });
    }

    function deleteDemo() {
        Entities.deleteEntity(modelID);
    }

    function onMoreAppWebEventReceived(message) {
        eventObj = JSON.parse(message);
        if ( eventObj.chanel === chanel){
            if ( eventObj.action === "update"){
                if (eventObj.isModelChange) {
                    print("DATA!");
                    deleteDemo();
                    createDemo(eventObj.dna);
                } else {
                    updateDemo(eventObj.dna);
                }
            }
            if ( eventObj.action === "wear"){
                
            }
            if ( eventObj.action === "bookmark"){

            }                   
        }
    }

    function onScreenChanged(type, url) {
        if (type == "Web" && url.indexOf(APP_URL) != -1) {
            appStatus = true;
        } else {
            appStatus = false;
            deleteDemo();
        }
        button.editProperties({
            isActive: appStatus
        });
    }

    function cleanup() {
        if (appStatus) {
            tablet.gotoHomeScreen();
            tablet.webEventReceived.disconnect(onMoreAppWebEventReceived);
            deleteDemo();
        }
        tablet.screenChanged.disconnect(onScreenChanged);
        tablet.removeButton(button);
    }
    Script.scriptEnding.connect(cleanup);
}());
