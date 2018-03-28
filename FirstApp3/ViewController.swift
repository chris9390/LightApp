//
//  ViewController.swift
//  FirstApp3
//
//  Created by Myoung-Wan Koo on 2018. 3. 21..
//  Copyright © 2018년 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var messageButton: UIButton!
    
    
    var lightOn = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonTap(_ sender: UIButton) {
        print("Button Touched")
        updateUI()
        lightOn = !lightOn
    }
    
    //Cleaning
    func updateUI() {
        if lightOn == true{
            self.messageLabel.text = "White"
            self.messageLabel.textColor = .black
            view.backgroundColor = .white
            self.messageButton.setTitle("Off", for: .normal)
        } else {
            self.messageLabel.text = "Black"
            self.messageLabel.textColor = .white
            view.backgroundColor = .black
            self.messageButton.setTitle("On",for: .normal)
        }
    }

}


