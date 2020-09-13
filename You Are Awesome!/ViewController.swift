//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jennifer Joseph on 9/5/20.
//  Copyright © 2020 Jennifer Joseph. All rights reserved.
//

import UIKit
import AVFoundation //needed for sounds

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
        
    var messageNumber = -1        //setting these to numbers that arent possible for the imageNumbers so the initial image /                message doesnt get skipped if its 0
    var imageNumber = -1
    var soundNumber = -1
    var totalNumberOfImages = 10
    var totalNumberOfSounds = 6
    var audioPlayer : AVAudioPlayer!
    
    
    //  viewDidLoad() is a system event, called by the operating system when the view controller loads for the first time
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // playSound() is a helper function
    func playSound(soundName : String) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch { print("👺Error: \(error.localizedDescription) could not initialize player") }
        }
        else {
            print("👺Error: could not read file")
        }
    }
    
    // helper function DRY style - generates non repeating values
    // parameter originalNumber cleans up the triple usage of message/image/soundNumer
    // upperBounds represents the Max of any random number generated
    // returns a random Int value between 0 and upperBounds
    func nonRepeatingRandom(originalNumber : Int, upperBounds : Int) -> Int {
        var newNonRepeatingRandom : Int
        repeat {
            newNonRepeatingRandom = Int.random(in: 0...upperBounds)
        } while  originalNumber == newNonRepeatingRandom
        return newNonRepeatingRandom
    }

    //  messageButtonPressed() is a user event, IBAction that we created
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "You are legendary!", "You are swifty!", "You are funny!", "You are magical!"]
        
        // using helper function nonRepeatingRandom() return value to update message/image/soundNumber
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages-1)
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds-1)
        
        // generate non-repeating message, image, and sound
        messageLabel.text = messages[messageNumber]
        imageView.image = UIImage(named: "image\(imageNumber)")
        playSound(soundName: "sound\(soundNumber)")
    }
}
   
  
