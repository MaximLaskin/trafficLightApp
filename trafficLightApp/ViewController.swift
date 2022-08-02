import UIKit


enum LightController {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLightViev: UIView!
    @IBOutlet weak var yellowLightViev: UIView!
    @IBOutlet weak var greenLightViev: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    private var currentLight = LightController.red
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
//            redLightViev.alpha = 0.3
//            yellowLightViev.alpha = 0.3
//            redLightViev.alpha = 0.3
        [redLightViev, yellowLightViev, greenLightViev].forEach{ $0.alpha = 0.3 }
              
        
        redLightViev.layer.cornerRadius = redLightViev.layer.bounds.width / 2
        yellowLightViev.layer.cornerRadius = yellowLightViev.layer.bounds.width / 2
        greenLightViev.layer.cornerRadius = greenLightViev.layer.bounds.width / 2
        
        nextButton.backgroundColor = #colorLiteral(red: 0.408438392, green: 0.5202974955, blue: 1, alpha: 1)
        nextButton.tintColor = .white
        nextButton.setTitle("START", for: .normal)
        nextButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func changeNameButton() {
        nextButton.setTitle("NEXT", for: .normal)
    
            switch currentLight {
            case .red:
                redLightViev.alpha = 1
                yellowLightViev.alpha = 0.3
                greenLightViev.alpha = 0.3
                currentLight = .yellow
            case .yellow:
                redLightViev.alpha = 0.3
                yellowLightViev.alpha = 1
                greenLightViev.alpha = 0.3
                currentLight = .green
            case .green:
                redLightViev.alpha = 0.3
                yellowLightViev.alpha = 0.3
                greenLightViev.alpha = 1
                currentLight = .red
            }
        }
}

