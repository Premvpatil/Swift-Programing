
import UIKit

class ViewController: UIViewController {

    // ------------ Start here Button1 code On / Of ------------
    var lightOnOff: Bool = false
    func Btn(){
        lightOnOff.toggle()
        if lightOnOff{
            btn_on_of.setTitle("Press-Me :) ON", for: .normal)
            view.backgroundColor = .white
            txt_Prempatil.text = "Light Application ON"
        }
       else{
            btn_on_of.setTitle("Press-Me :) OFF", for: .normal)
            view.backgroundColor = .black
           txt_Prempatil.text = "Light Application OFF"
        }
        print("Button Pressed")
    }
    
    @IBOutlet weak var txt_Prempatil: UILabel!
    @IBOutlet weak var btn_on_of: UIButton!
    @IBAction func btn_pressed(_ sender: Any) {
        Btn()
    }
    // ------------ End here Button1 code On / Of ------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ------------ Programing Start here for mobile display ------------
        
        // view.backgroundColor = .brown
        
        
    }


}

