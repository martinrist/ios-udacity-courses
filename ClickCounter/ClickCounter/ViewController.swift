//
//  ViewController.swift
//  ClickCounter
//
//  Created by Martin Rist on 07/10/2017.
//  Copyright © 2017 Martin Rist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Label
        label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        
        // Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        
    }
    
    @objc
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }

}

