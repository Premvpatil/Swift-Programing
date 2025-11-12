
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eventTextView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var simulateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTextView.isEditable = false  // Make sure user can't edit the text view
        logEvent("viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            logEvent("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            logEvent("viewDidAppear")
    }
    
    // Button action connected to "Clear"
    @IBAction func clearButton(_ sender: UIButton) {
            eventTextView.text = ""
    }

    // Button action connected to "Simulate Event"
    @IBAction func simulateButton(_ sender: UIButton) {
            logEvent("Simulated Event")
    }

    // Append a new event to the UITextView with timestamp
    func logEvent(_ event: String) {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        let timeString = formatter.string(from: Date())

        let newLine = "[\(timeString)] \(event)\n"
        eventTextView.text += newLine

        // Scroll to the bottom so new event is visible
        let bottomRange = NSMakeRange(eventTextView.text.count - 1, 0)
        eventTextView.scrollRangeToVisible(bottomRange)
    }
    
}

