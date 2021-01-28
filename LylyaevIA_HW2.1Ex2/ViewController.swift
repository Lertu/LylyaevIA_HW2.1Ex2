//
//  ViewController.swift
//  LylyaevIA_HW2.1Ex2
//
//  Created by Игорь И on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var changeLightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        changeLightButton.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func changeLightButtonPressed(_ sender: Any) {
        changeLightButton.setTitle("NEXT", for: .normal)
        if redLightView.alpha == 0.3 {
            redLightView.alpha = 1
        }
        else if redLightView.alpha == 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
        }
        else if yellowLightView.alpha == 1 {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        }
        else {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        }
    }
}

