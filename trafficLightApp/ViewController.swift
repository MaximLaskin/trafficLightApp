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
              
        
        redLightViev.layer.cornerRadius = redLightViev.layer.bounds.width / 2
        yellowLightViev.layer.cornerRadius = yellowLightViev.layer.bounds.width / 2
        greenLightViev.layer.cornerRadius = greenLightViev.layer.bounds.width / 2
        
        nextButton.backgroundColor = #colorLiteral(red: 0.408438392, green: 0.5202974955, blue: 1, alpha: 1)
        nextButton.tintColor = .white
        nextButton.setTitle("START", for: .normal)
        nextButton.layer.cornerRadius = 10
        
      
//        nextButton.configuration = setupButton(with: "START")
    }
    
    @IBAction func changeNameButton() {
        nextButton.setTitle("NEXT", for: .normal)
    }
    

    
    
   
    
    
    


        
    

    
    

}

