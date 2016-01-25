//
//  ViewController.swift
//  NinjaGold
//
//  Created by Kai Bachmann on 9/1/15.
//  Copyright © 2015 Kai Bachmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
    
    var score = 0
    var earned = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        farmLabel.hidden = true
        caveLabel.hidden = true
        houseLabel.hidden = true
        casinoLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func goldButtonPressed(sender: UIButton) {
        farmLabel.hidden = true
        caveLabel.hidden = true
        houseLabel.hidden = true
        casinoLabel.hidden = true
        if sender.tag == 1{
            earned = Int(arc4random_uniform(10)+10)
            score += earned
            farmLabel.text = "You have eared \(earned) gold"
            farmLabel.hidden = false
        } else if sender.tag == 2{
            earned = Int(arc4random_uniform(5)+5)
            score += earned
            caveLabel.text = "You have earned \(earned) gold"
            caveLabel.hidden = false
        } else if sender.tag == 3{
            earned = Int(arc4random_uniform(3)+2)
            score += earned
            houseLabel.text = "You have earned \(earned) gold"
            houseLabel.hidden = false
        } else if sender.tag == 4{
            earned = Int(arc4random_uniform(50))
            var pos = Int(arc4random_uniform(2))
            casinoLabel.text = "You have earned \(earned) gold"
            if pos == 1{
                earned = earned - (earned*2)
                casinoLabel.text = "You have lost \(earned) gold"
            }
            score += earned
            casinoLabel.hidden = false
        } else {
            score = 0
        }
        scoreLabel.text = "\(score)"
    }

}

