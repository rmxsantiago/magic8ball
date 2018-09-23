//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rafael Santiago on 23/09/2018.
//  Copyright © 2018 Rafael Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgViewMagic8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateMagic8BallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        updateMagic8BallImage()        
    }
    
    func updateMagic8BallImage(){
        imgViewMagic8Ball.image = UIImage(named: "ball" + String(Int.random(in: 1 ... 5)))
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagic8BallImage()
    }
    
    
}

