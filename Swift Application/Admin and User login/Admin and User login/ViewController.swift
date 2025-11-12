import UIKit

class ViewController: UIViewController {

    // Connect these outlets from storyboard
    @IBOutlet weak var usernameTextField: UITextField!   // Username input
    @IBOutlet weak var passwordTextField: UITextField!   // Password input
    @IBOutlet weak var messageLabel: UILabel!            // Label to show messages

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set initial UI state
        messageLabel.text = ""
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if (username == "Admin" && password == "Admin@123") || (username == "User" && password == "User@123") {
            messageLabel.text = "Login Successful"
            messageLabel.textColor = .yellow
        } else {
            messageLabel.text = "Invalid username or password"
            messageLabel.textColor = .red
        }
    }

    @IBAction func registerTapped(_ sender: UIButton) {
        // Optional: handle register button tap
        messageLabel.text = "Register button tapped!"
        messageLabel.textColor = .yellow
    }
}
