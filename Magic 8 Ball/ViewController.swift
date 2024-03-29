//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Matt Henley on 7/3/19.
//  Copyright © 2019 Matt Henley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
        
    }
    
    // added motion detection
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4 )
        
        print(randomBallNumber)
        
        imageView.image = UIImage(named:ballArray[randomBallNumber])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // presents random image on startup
        print(newBallImage())
    }


}

