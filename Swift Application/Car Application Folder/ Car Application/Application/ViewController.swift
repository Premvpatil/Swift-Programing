//
//  ViewController.swift
//  Application
//
//  Created by Mac Lab 16 on 12/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_clicked: UIButton!
    
    @IBAction func btn_press(_ sender: Any) {
        print("The Button is pressed ")
    }
    
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func tgl_switch(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is On ")
        }
        else{
            print("The switch is Off ")
        }
    }
    
    @IBAction func txt_entered(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Prem Vishwanath Patil :) ")
    }


}

