//
//  ViewController.swift
//  TrafficLight
//
//  Created by Юрий Скворцов on 17.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
    }
       
    @IBAction func startButtonPressed() {
        let lightAlpha: CGFloat = 1
        switch lightAlpha {
        case redLightView.alpha:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case yellowLightView.alpha:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        case greenLightView.alpha:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        default:
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

