//
//  ViewController.swift
//  trafficLightApp
//
//  Created by Swift on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightViev: UIView!
    @IBOutlet weak var yellowLightViev: UIView!
    @IBOutlet weak var greenLightViev: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redLightViev, yellowLightViev, greenLightViev].forEach{ $0.alpha = 0.3 }
                // с этой записью помог куратор)
        
        redLightViev.layer.cornerRadius = redLightViev.layer.bounds.width / 2
        yellowLightViev.layer.cornerRadius = yellowLightViev.layer.bounds.width / 2
        greenLightViev.layer.cornerRadius = greenLightViev.layer.bounds.width / 2
        //          [redLightViev, yellowLightViev, greenLightViev] = .forEach{ $0.layer.bounds.width / 2 }
        // делал по аналогии с alpha, но компилятору не нравится деление... моя запись неправильная?
      
        nextButton.configuration = setupButton(with: "START")
    }

    @IBAction func nextButtonPressed() {
        nextButton.configuration = setupButton(with: "NEXT")
    }
        
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.4034786248, green: 0.6455494493, blue: 1, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 30)
        
        
        return buttonConfiguration
    }
        
    

    
    

}

