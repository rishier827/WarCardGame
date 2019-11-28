//
//  ViewController.swift
//  WarCardGame
//
//  Created by Nishara Ramasinghe on 11/22/19.
//  Copyright © 2019 Nishara Ramasinghe. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController {

    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreView: UILabel!
    
    @IBOutlet weak var RightScoreView: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftnum = Int.random(in: 2...14)
        let rightnum = Int.random(in: 2...14)
         
        if(leftnum>rightnum){
            // left side wins
            leftScore += 1
            LeftScoreView.text = String(leftScore)
        }
        else if(leftnum<rightnum){
            // right side wins
            rightScore += 1
            RightScoreView.text = String(rightScore)
        }
        else{
            // Tie
            LeftScoreView.text = String(leftScore)
            RightScoreView.text = String(rightScore) 
        }
        LeftImageView.image = UIImage(named: "card\(leftnum)")
        
        RightImageView.image = UIImage(named: "card\(rightnum)")
    }
    

}

