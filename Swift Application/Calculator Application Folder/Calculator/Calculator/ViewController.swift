import UIKit

class ViewController: UIViewController {
    
    // Display labels

    @IBOutlet weak var Display_area: UILabel!
    @IBOutlet weak var Ans_bar: UITextField!
    @IBOutlet weak var screen: UITextField!
    
    // Number buttons
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button_dot: UIButton!
    
    // Operator buttons
    @IBOutlet weak var divide_button: UIButton!
    @IBOutlet weak var multiplication_button: UIButton!
    @IBOutlet weak var substract_button: UIButton!
    @IBOutlet weak var addition_button: UIButton!
    @IBOutlet weak var percentage_button: UIButton!
    
    // Utility buttons
    @IBOutlet weak var clear_button: UIButton!
    @IBOutlet weak var back_button: UIButton!
    
    // Store expression as string
    var currentExpression: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen.isUserInteractionEnabled = false
        Ans_bar.isUserInteractionEnabled = false
        
        setupButtons()
    }
    
    // MARK: - Setup Buttons Programmatically
    func setupButtons() {
        // Number buttons
        let numberButtons = [
            button0, button1, button2, button3, button4,
            button5, button6, button7, button8, button9
        ]
        
        for (index, button) in numberButtons.enumerated() {
            button?.tag = index
            button?.addTarget(self, action: #selector(digitPressed(_:)), for: .touchUpInside)
        }
        
        // Dot button
        button_dot.addTarget(self, action: #selector(dotPressed), for: .touchUpInside)
        
        // Operator buttons
        addition_button.addTarget(self, action: #selector(operatorPressed(_:)), for: .touchUpInside)
        substract_button.addTarget(self, action: #selector(operatorPressed(_:)), for: .touchUpInside)
        multiplication_button.addTarget(self, action: #selector(operatorPressed(_:)), for: .touchUpInside)
        divide_button.addTarget(self, action: #selector(operatorPressed(_:)), for: .touchUpInside)
        percentage_button.addTarget(self, action: #selector(operatorPressed(_:)), for: .touchUpInside)
        
        // Clear and back buttons
        clear_button.addTarget(self, action: #selector(clearPressed), for: .touchUpInside)
        back_button.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
    }
    
    // MARK: - Button Handlers
    @objc func digitPressed(_ sender: UIButton) {
        currentExpression += "\(sender.tag)"
        screen.text = currentExpression
    }
    
    @objc func dotPressed() {
        currentExpression += "."
        screen.text = currentExpression
    }
    
    @objc func operatorPressed(_ sender: UIButton) {
        switch sender {
        case addition_button:
            currentExpression += "+"
        case substract_button:
            currentExpression += "-"
        case multiplication_button:
            currentExpression += "*"
        case divide_button:
            currentExpression += "/"
        case percentage_button:
            currentExpression += "*0.01"
        default:
            break
        }
        screen.text = currentExpression
    }
    
    @objc func clearPressed() {
        currentExpression = ""
        screen.text = ""
        Ans_bar.text = ""
    }
    
    @objc func backPressed() {
        if !currentExpression.isEmpty {
            currentExpression.removeLast()
            screen.text = currentExpression
        }
    }
    
    // MARK: - Equal (=) Button
    
    @IBAction func ansbutton_(_ sender: Any) {
        let expressionStr = currentExpression
        
        let expression = NSExpression(format: expressionStr)
        
        if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
            Ans_bar.text = "\(result)"
        } else {
            Ans_bar.text = "Error"
        }
    }
}
