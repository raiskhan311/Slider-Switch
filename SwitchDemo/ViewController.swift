//
//  ViewController.swift
//  SwitchDemo
//
//  Created by mac on 15/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var lbl_slidervalue: UILabel!
    
    @IBOutlet weak var lbl_order: UILabel!
    
    @IBOutlet weak var btn_switch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbl_order.alpha = 0
        lbl_slidervalue.alpha =  0
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func btn_Switch(_ sender: UISwitch) {
        lbl_order.alpha = 1
        if sender.isOn == true{
            btn_switch.tintColor = UIColor.red
            btn_switch.thumbTintColor = UIColor.black
            lbl_order.text = "I want a Pizza!"
            self.view.backgroundColor = UIColor.blue
            self.lbl_order.textColor = UIColor.white
        }
        else{
            btn_switch.tintColor = UIColor.clear
            btn_switch.thumbTintColor = UIColor.cyan
            
            lbl_order.text = "No, I don't want a Pizza"
            self.view.backgroundColor = UIColor.brown
            self.lbl_order.textColor = UIColor.white
        }
    }
    
    @IBAction func btn_slider(_ sender: UISlider) {
        lbl_slidervalue.alpha =  1
        slider.value = round(slider.value)
        lbl_slidervalue.text = "\(String(Int(sender.value)))0%"
    }
    
}

