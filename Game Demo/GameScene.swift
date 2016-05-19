//
//  GameScene.swift
//  Game Demo
//
//  Created by Demo on 5/18/16.
//  Copyright © 2016 Illuminated Bits LLC. All rights reserved.
//

import Foundation

enum GameScenes:String{
    //This is a list of Scene Names.
    case scene1
    case scene2
    case scene3
    case scene4
    case scene5

    
}

/*
 
 Class: GameScene
 Descripton: GammeScene is used as the data model for a single scene in the gamge
 Instance Variables
 sceneID:String - The unique name of the Scene, liek "Opening" or "Picked up Knife"
 
 option1:GameScene?  - The scene that shoule be loaded of the button on the left is selected
 option2:GameScene?  - The scene that shoule be loaded of the button on the right is selected

 option1Text:String? - The text shown on the left button
 option2Text:String? - The text shown on the right button
 
 dialog:String -  The text that the user will see when viewing this scene
 */

class GameScene{
    
    let sceneID:String
    
    var option1:GameScene?
    var option2:GameScene?
    
    var option1Text:String?
    var option2Text:String?
    
    var dialog:String = ""
    
    init(id:String){
        self.sceneID = id
        
    }
    init(id:String, dialog:String, button1Text:String? = nil, button2Text:String? = nil, option1:GameScene? = nil, option2:GameScene? = nil){
        
        self.sceneID = id
        self.dialog = dialog
        self.option1Text = button1Text
        self.option2Text = button2Text
        
        self.option1 = option1
        self.option2 = option2
    }
    
}