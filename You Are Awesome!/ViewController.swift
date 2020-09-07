//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jennifer Joseph on 9/5/20.
//  Copyright © 2020 Jennifer Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("😎  viewDidLoad() has run!")
        //messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        //print("🤠  The message button was pressed!")
        
        let awesomeMessage = "You are awesome!"
        let greatMessage = "You are great!"
        let bombMessage = "You are bomb!"

        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        }
            
        else if messageLabel.text == greatMessage {
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "image2")
        }
            
        else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
        
        //messageLabel.text = "You are awesome!"
        //imageView.image = UIImage(named: "image0")
    }
}
   
  
