//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alejandro Vargas de la Mora on 10/15/17.
//  Copyright © 2017 Alejandro Vargas de la Mora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let balls = [ "ball1", "ball2", "ball3", "ball4","ball5" ]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBall(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: balls[randomBallNumber])
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }

}

