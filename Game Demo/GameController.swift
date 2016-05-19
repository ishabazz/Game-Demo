//
//  GameController.swift
//  Game Demo
//
//  Created by Demo on 5/18/16.
//  Copyright © 2016 Illuminated Bits LLC. All rights reserved.
//

import UIKit


/*
 
 Class: GameController
 Descripton: GameController is used to setup the series of GameScenes and their relationships to each other
 Instance Variables
 scenes:[String:GameScene] - a Dictionary that uses Strings as keys and Games Scenes as values
 
 Methods:
 func createGame() -  a function that creates the relatonships between the game scense then stores the scenens in the dicitionary for later use.
 */

class GameController{
    
    var scenes:[String:GameScene] = [:]
    
    
    init(){
        self.createGame()
    }
    
    func createGame(){
        //First Scene

        let scene1 = GameScene(id: "scene1", dialog: "Hello World!\n Would you like to continue?", button1Text: "Nope", button2Text: "Yup")
        
        let scene2 = GameScene(id: "scene2", dialog: "Welcome to the second scene \n Still wnat to go on?", button1Text: "Nope", button2Text: "Yup")

        let scene3 = GameScene(id: "scene3", dialog: "Really? You're going to quit\n Are you sure?", button1Text: "Nope", button2Text: "Yup")

        let scene4 = GameScene(id: "scene4", dialog: "I guess your'e a quitter 😕")

        let scene5 = GameScene(id: "scene5", dialog: "Your'e a winner")
        
        scene1.option1 = scene3
        scene1.option2 = scene2
        
        scene2.option1 = scene4
        scene2.option2 = scene5
        
        scene3.option1 = scene5
        scene3.option2 = scene4

                
        scenes["1"] = scene1
        scenes["2"] = scene2
        scenes["3"] = scene3
        scenes["4"] = scene4
        scenes["5"] = scene5

        
    }
}