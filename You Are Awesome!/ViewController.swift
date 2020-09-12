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
    
    var messagesIndex = 0
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("😎  viewDidLoad() has run!")
        //messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        var messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are legendary!", "You are swifty!", "You are funny!", "You are magical!"]
        
        var randomImage = Int.random(in: 0...9)
        var randomMessage = Int.random(in: 0...messages.count-1)
        
        var newMessage = messages[randomMessage]
        
        while messageLabel.text == newMessage {
            newMessage = messages[ Int.random(in: 0...messages.count-1)]
        }
        
        messageLabel.text = newMessage
        imageView.image = UIImage(named: "image\(randomImage)")
    }
}
   
  
