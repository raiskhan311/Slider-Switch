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
    
    @IBOutlet weak var stepper: UIStepper!
    
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
        lbl_slidervalue.text = "\(String(Int(sender.value)))%"
    }
    
    @IBAction func stp_Stepper(_ sender: UIStepper) {
         lbl_slidervalue.alpha =  1
        lbl_slidervalue.text = String(sender.value)
    }
    
    @IBAction func alertview(_ sender: UIButton) {
        let alert = UIAlertController(title: "My tittle here", message: "Hello", preferredStyle: .alert)
        let action = UIAlertAction(title: "SAVE", style: .destructive) { (action) in
            self.lbl_order.alpha = 1
            self.lbl_order.text = alert.textFields?.first?.text
        }
        let action1 = UIAlertAction(title: "Exit", style: .destructive) { (action) in
            print("this is the action of my alert")
        }
        alert.addTextField { (textfield) in
            textfield.placeholder = "Please Enter Number"
            textfield.keyboardType = .numberPad
        }
        alert.addAction(action)
        alert.addAction(action1)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func action(_ sender: UIButton) {
        let sheet = UIAlertController(title: "My Title", message: "Who are YOu", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Close", style: .destructive) { (action) in
            print("this is the action of my sheet")
        }
        let action1 = UIAlertAction(title: "Exit", style: .destructive) { (action) in
            print("this is the action of my sheet1")
        }
        sheet.addAction(action)
        sheet.addAction(action1)
        present(sheet, animated: true, completion: nil)
    }
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBAction func btn_star(_ sender: UIButton) {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    @IBAction func btn_Stop(_ sender: UIButton) {
        activityIndicator.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()

    }
    
    
}

