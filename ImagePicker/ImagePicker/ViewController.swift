//
//  ViewController.swift
//  ImagePicker
//
//  Created by Martin Rist on 08/10/2017.
//  Copyright © 2017 Martin Rist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func experiment() {
        let nextController = UIAlertController()
        nextController.title = "Alert!"
        nextController.message = "Alert message..."
        
        let okAction = UIAlertAction(title: "ok", style: .default) {
            action in
            self.dismiss(animated: true, completion: nil)
        }
        
        nextController.addAction(okAction)
        self.present(nextController, animated: true, completion: nil)
    }


}
