//
//  ViewController.swift
//  cardGame
//
//  Created by Dharmesh on 21/10/14.
//  Copyright (c) 2014 Dharmesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    
    var cardsNameArray :[String] = ["Ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "Jack", "Queen", "King"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        var NICellFactory : UITableViewCell = UITableViewCell()
        //for randomize first card
        var firstRandomNumber : Int = Int(arc4random_uniform(13))
        
        //construct a string with the random number
        var firstCardString = self.cardsNameArray[firstRandomNumber]
        
        //for randomize second card
        var secondRandomNumber :Int = Int(arc4random_uniform(13))
        var secondCardString = self.cardsNameArray[secondRandomNumber]
        
        //Set up first card ImageView to the assest corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
    
        // Determine the higher card
        
        if firstRandomNumber > secondRandomNumber{
            
            // TODO: First card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        
        }else if firstRandomNumber == secondRandomNumber{
            
            // TODO: numbers are equal
            
        }else{
            
            //TODO: Second card is larger
            
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
            
        }
    }
}

