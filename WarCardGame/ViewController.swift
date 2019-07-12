//
//  ViewController.swift
//  WarCardGame
//
//  Created by Akshay Shinde on 7/10/19.
//  Copyright © 2019 Akshay_Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var cpuLabel: UILabel!
    
    @IBOutlet weak var playerLabel: UILabel!
    
    var playerScore = 0
    
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftCardNumber = Int.random(in: 2...14)
        var rightCardNumber = Int.random(in: 2...14)
        while(leftCardNumber == rightCardNumber){
            rightCardNumber = Int.random(in: 2...14)
        }
        
        leftCard.image = UIImage(named: "card\(leftCardNumber)")
        rightCard.image = UIImage(named: "card\(rightCardNumber)")
        
        if leftCardNumber > rightCardNumber {
            playerScore += 1
            playerLabel.text = "\(playerScore)"
        } else {
            cpuScore += 1
            cpuLabel.text = "\(cpuScore)"
        }
    }
    
}

