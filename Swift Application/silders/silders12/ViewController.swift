//
//  ViewController.swift
//  silders12
//
//  Created by Mac Lab 15 on 03/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var toggleSwitch: UISwitch!
    @IBOutlet var datepicker: UIDatePicker!
    @IBOutlet var sliderLabel: UILabel!
    @IBOutlet var switchLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50

        toggleSwitch.isOn = true
        
       
        datepicker.date = Date()
        
      
        updateAllLabels()
    }
    
    
    private func updateSliderLabel() {
        sliderLabel.text = "Slider Value: \(Int(round(slider.value)))"
    }
    
    private func updateSwitchLabel() {
        switchLabel.text = "Switch is \(toggleSwitch.isOn ? "ON" : "OFF")"
    }
    
    private func updateDateLabel() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        dateLabel.text = "Selected Date: \(formatter.string(from: datepicker.date))"
    }
    
    private func updateAllLabels() {
        updateSliderLabel()
        updateSwitchLabel()
        updateDateLabel()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        slider.value = round(sender.value) // Round to integer
        updateSliderLabel()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateSwitchLabel()
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        updateDateLabel()
    }
    
    @IBAction func confirmTapped(_ sender: Any) {
        updateAllLabels()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        slider.value = 50
        toggleSwitch.isOn = true
        datepicker.date = Date()
        updateAllLabels()
    }
}
