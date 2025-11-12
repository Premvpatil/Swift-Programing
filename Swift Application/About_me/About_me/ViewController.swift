
//  Created by Mac Lab 16 on 03/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextView.isHidden = true  // Hide the text view initially
        // Do any additional setup after loading the view.
    }
    
    @IBAction func contactButton(_ sender: Any) {
        infoTextView.isHidden.toggle()
        
            if !infoTextView.isHidden {
                infoTextView.text = """
                Name: Prem Vishwanath Patil
                Contact: +91 1234567895
                Email: Prem@gmail.com
                """
            }
    }
    
    @IBAction func showHobbiesTapped(_ sender: Any) {
        infoTextView.isHidden.toggle() // Toggle visibility

            if !infoTextView.isHidden {
                infoTextView.text = "I love hiking, coding, and reading books."
            }
    }
    
    @IBAction func skillButton(_ sender: Any) {
        infoTextView.isHidden.toggle()
        
            if !infoTextView.isHidden {
                infoTextView.text = "Swift, UIKit, Core Data, Git, etc."
            }
    }
    
    
    @IBAction func experienceButton(_ sender: Any) {
        infoTextView.isHidden.toggle()
        
            if !infoTextView.isHidden {
                infoTextView.text = """
                intern: Pregard
                freelancer: Launched
                virtua intern: Eduskill
                """
            }
    }
    
    @IBAction func projectButton(_ sender: Any) {
        infoTextView.isHidden.toggle()
        
            if !infoTextView.isHidden {
                infoTextView.text = """
                Capstone: Taskbidder
                Presonal: Iot Project
                Portfolio: Portfolio
                """
            }
    }
}

