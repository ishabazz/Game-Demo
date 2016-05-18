//
//  MainVC.swift
//  Game Demo
//
//  Created by Ish on 5/18/16.
//  Copyright © 2016 Illuminated Bits LLC. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
  
    @IBOutlet weak var continueButton: UIButton!
    
    let story = UIStoryboard(name: "Main", bundle: nil)
    
    var gameController = GameController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newGameButton.backgroundColor = UIColor.purpleColor()
        newGameButton.layer.cornerRadius = newGameButton.frame.size.height / 2
        newGameButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        continueButton.layer.cornerRadius = continueButton.frame.size.height / 2
        continueButton!.layer.borderColor = UIColor.purpleColor().CGColor
        continueButton!.layer.borderWidth = 1.0
        continueButton.setTitleColor(UIColor.purpleColor(), forState: .Normal)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    }

    @IBAction func newGamePressed(sender: UIButton) {
        guard let firstGameSceneVC =   story.instantiateViewControllerWithIdentifier("gameScene") as? GameSceneVC else {return}
        
        firstGameSceneVC.scene = self.gameController.scenes["1"]
        firstGameSceneVC.option1 = self.gameController.scenes["3"]
        firstGameSceneVC.option2 = self.gameController.scenes["2"]

        navigationController?.pushViewController(firstGameSceneVC, animated: true)
        
    }
    @IBAction func continuePressed(sender: UIButton) {
    }
    
    
   }
