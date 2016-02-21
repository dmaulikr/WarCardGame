//
//  ViewController.swift
//  War
//
//  Created by Greg Willis on 1/13/16.
//  Copyright © 2016 Willis Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!    
    @IBOutlet weak var dealCardButton: RoundedButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet var playerScoreLabel: UILabel!
    var playerScore = 0
    
    @IBOutlet var enemyScoreLabel: UILabel!
    var enemyScore = 0
    
    var cardNameArray: [String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerScoreLabel.text = String("0")
        enemyScoreLabel.text = String("0")
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealButtonPushed(sender: RoundedButton) {
        
        let firstRandomNumber = Int(arc4random_uniform(13))
        let firstCardString:String = cardNameArray[firstRandomNumber]
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        let secondRandomNumber = Int(arc4random_uniform(13))
        let secondCardString:String = cardNameArray[secondRandomNumber]
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        if firstRandomNumber > secondRandomNumber {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
            
        } else if firstRandomNumber == secondRandomNumber {
            // Do nothing
        } else {
            enemyScore += 1
            enemyScoreLabel.text = String(enemyScore)
            
        }
    }
}

