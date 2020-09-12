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
    
    var messageNumber = 0
    var imageNumber = 0
    var totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("😎  viewDidLoad() has run!")
        //messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are legendary!", "You are swifty!", "You are funny!", "You are magical!"]
        
        var newMessageNumber = Int.random(in: 0...messages.count-1)
        
        while messageNumber == newMessageNumber {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber = Int.random(in: 0...totalNumberOfImages)
        
        while imageNumber == newImageNumber {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
    }
}
   
  
