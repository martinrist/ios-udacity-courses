//
//  PresentResultViewController.swift
//  Roshambo
//
//  Created by Martin Rist on 09/10/2017.
//  Copyright © 2017 Martin Rist. All rights reserved.
//

import UIKit

class PresentResultViewController: UIViewController {

    @IBOutlet weak var resultsImage: UIImageView?
    @IBOutlet weak var resultsLabel: UILabel!
    
    var playerChoice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let playerChoice = playerChoice {
            print("Player chose \(playerChoice)")
        } else {
            print("No choice made")
        }
    }

    
}
