//
//  GameSceneVC.swift
//  Game Demo
//
//  Created by Demo on 5/18/16.
//  Copyright © 2016 Illuminated Bits LLC. All rights reserved.
//

import UIKit

class GameSceneVC: UIViewController {
    
    var option1:GameScene?
    var option2:GameScene?
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var dialogueLabel: UILabel!
    
    
    var option1Text:String?
    var option2Text:String?
    
    var scene:GameScene?
    
    let story = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let scene = scene else {return}
        
        //Setup Views with intial info
        
        dialogueLabel.text = scene.dialog ?? ""
        
        option1Button.setTitle(scene.option1Text ?? "", forState: .Normal)
        option2Button.setTitle(scene.option2Text ?? "", forState: .Normal)

        //Make the buttons have rounded corners
        option1Button.layer.cornerRadius = 15.0
        option1Button.clipsToBounds = true

        option1Button.layer.cornerRadius = option1Button.frame.size.height / 2
        option1Button!.layer.borderColor = UIColor.purpleColor().CGColor
        option1Button!.layer.borderWidth = 1.0
        option1Button.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        
        option2Button.layer.cornerRadius = 15.0
        option2Button.clipsToBounds = true
        option2Button.backgroundColor = UIColor.purpleColor()
        option2Button.layer.cornerRadius = option2Button.frame.size.height / 2
        option2Button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        option1 = scene.option1
        option2 = scene.option2
        if option1 == nil{
            option1Button.hidden = true
        }
        
        if option2 == nil {
            option2Button.hidden = true
        }

    }


    
    @IBAction func option1Pressed(sender: UIButton) {

        guard let option1 = option1 else {return}
        guard let nextScene = story.instantiateViewControllerWithIdentifier("gameScene") as? GameSceneVC else {return}
        nextScene.scene = option1
        
        navigationController?.pushViewController(nextScene, animated: true)
    }

    @IBAction func option2Pressed(sender: UIButton) {
        guard let option1 = option2 else {return}
        guard let nextScene = story.instantiateViewControllerWithIdentifier("gameScene") as? GameSceneVC else {return}
        nextScene.scene = option1
        
        navigationController?.pushViewController(nextScene, animated: true)
    }
   
    @IBAction func restartPressed(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
}
