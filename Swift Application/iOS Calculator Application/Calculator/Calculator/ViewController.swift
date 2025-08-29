
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!

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
    
    var num1 = 0.0
    var num2 = 0.0
    
    var op = "+"
    var ans = 0.0
    
    
    override func viewDidLoad() {
        num1 = 0
        num2 = 0
        
        displayLabel.text = ""
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonzeroclicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "0"
    }
    
    
    @IBAction func butttonplusclicked(_ sender: Any) {
        op = "+"
        num1 = Double(displayLabel.text!)!
        displayLabel.text = ""
    }
    
    @IBAction func butttonminuxclicked(_ sender: Any) {
        op = "-"
        num1 = Double(displayLabel.text!)!
        displayLabel.text = ""
    }
    
    @IBAction func butttonmulpclicked(_ sender: Any) {
        op = "*"
        num1 = Double(displayLabel.text!)!
        displayLabel.text = ""
    }
    
    @IBAction func butttondivclicked(_ sender: Any) {
        op = "/"
        num1 = Double(displayLabel.text!)!
        displayLabel.text = ""
    }
    
    @IBAction func butttonmodclicked(_ sender: Any) {
        op = "%"
        num1 = Double(displayLabel.text!)!
        displayLabel.text = ""
    }
    
    @IBAction func button1clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "1"
    }
    
    @IBAction func button2clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "2"
    }
    
    @IBAction func button3clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "3"
    }
    
    @IBAction func button4clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "4"
    }
    
    @IBAction func button5licked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "5"
    }
    
    @IBAction func button6clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "6"
    }
    
    @IBAction func button7clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "7"
    }
    
    @IBAction func button8clicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "8"
    }
    
    @IBAction func button9licked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "9"
    }
    
    @IBAction func buttondotclicked(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "."
    }
    
    
    @IBAction func buttonclearclicked(_ sender: Any) {
        displayLabel.text = ""
        num1 = 0
        num2 = 0
    }
    
    
    @IBAction func buttonequalclicked(_ sender: Any) {
        num2 = Double(displayLabel.text!)!
        switch(op)
        {
        case "+":
            ans = num1 + num2
        case "-":
            ans = num1 - num2
        case "*":
            ans = num1 * num2
        case "/":
            ans = num1 / num2
//        case "%":
//            ans = num1 % num2
        default:
            ans = 0
        }
        print(ans)
        displayLabel.text = String(ans)
       
    }
}

