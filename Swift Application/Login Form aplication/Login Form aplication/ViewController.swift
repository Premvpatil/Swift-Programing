
import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txt_username: UITextField!
    
    @IBOutlet weak var txt_password: UITextField!
    
    
    @IBAction func btn_clicked(_ sender: Any) {
        print(txt_username.text)
        if txt_username.text! == "System" && txt_password.text! == "root" {
            print("Succesfully login")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Prem Patil")
    }


}

