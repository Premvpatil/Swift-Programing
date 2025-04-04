//
//  ViewController.swift
//  Project1
//
//  Created by Mac Lab 16 on 29/03/25.
//

import UIKit

class ViewController: UIViewController {

    // ------------ Start here Button1 code On / Of ------------
    var lightOnOff: Bool = false
    func Btn(){
        lightOnOff.toggle()
        if lightOnOff{
            btn_on_of.setTitle("Light On", for: .normal)
            view.backgroundColor = .white
        }
       else{
            btn_on_of.setTitle("Light Off", for: .normal)
            view.backgroundColor = .black
        }
        print("Button Pressed")
    }
    
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

