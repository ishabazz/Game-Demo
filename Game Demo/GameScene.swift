//
//  GameScene.swift
//  Game Demo
//
//  Created by Demo on 5/18/16.
//  Copyright © 2016 Illuminated Bits LLC. All rights reserved.
//

import Foundation

enum GameScenes:String{
    
    case scene1
    case scene2
    case scene3
    case scene4
    case scene5

    
    
    
    func description()->String{
        return self.rawValue
    }
    
}

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