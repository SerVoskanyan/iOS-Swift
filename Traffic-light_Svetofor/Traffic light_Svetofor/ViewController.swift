//
//  ViewController.swift
//  Traffic light_Svetofor
//
//  Created by Серик Восканян on 21.05.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var selectButton: UIButton!
    
    var currentLight = CurrentLight.red
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        selectButton.layer.cornerRadius = 10
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redLightView.layer.cornerRadius = redLightView.layer.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.frame.width / 2
    }

    @IBAction func selectLightsButton() {
        
        selectButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOn
            currentLight = .yellow
            greenLightView.alpha = lightIsOff
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .red
        }
        
    }
}
