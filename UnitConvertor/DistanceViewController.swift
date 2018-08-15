//
//  DistanceViewController.swift
//  UnitConvertor
//
//  Created by Shalitha Mihiranga on 8/13/18.
//  Copyright © 2018 Shalitha Mihiranga. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var txtMeter: UITextField!
    @IBOutlet weak var txtFoot: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtKilometer: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    
    /*
     * Calaculate distance according to meter value
     */
    @IBAction func ChangeMeterTxt(_ sender: Any) {
        
        var foot: Double = 0.0
        var yard: Double = 0.0
        var kilometer: Double = 0.0
        var mile: Double = 0.0
        
        let value:String = self.txtMeter.text!
        
        if let val:Double = Double(value){
            
            //calculate foot
            foot = val * 3.28084
            txtFoot.text = String(foot)
            
            //calculate yard
            yard = val * 1.09361
            txtYard.text = String(yard)
            
            //calculate kilometer
            kilometer = val * 0.001
            txtKilometer.text = String(kilometer)
            
            //calculate mile
            mile = val * 0.000621371
            txtMile.text = String(mile)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate distance according to foot value
     */
    @IBAction func ChangeFootTxt(_ sender: Any) {
        
        var meter: Double = 0.0
        var yard: Double = 0.0
        var kilometer: Double = 0.0
        var mile: Double = 0.0
        
        let value:String = self.txtFoot.text!
        
        if let val:Double = Double(value){
            
            //calculate meter
            meter = val * 0.3048
            txtMeter.text = String(meter)
            
            //calculate yard
            yard = val * 0.333333
            txtYard.text = String(yard)
            
            //calculate kilometer
            kilometer = val * 0.0003048
            txtKilometer.text = String(kilometer)
            
            //calculate mile
            mile = val * 0.000189394
            txtMile.text = String(mile)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate distance according to yard value
     */
    @IBAction func ChangeYardTxt(_ sender: Any) {
        
        var meter: Double = 0.0
        var foot: Double = 0.0
        var kilometer: Double = 0.0
        var mile: Double = 0.0
        
        let value:String = self.txtYard.text!
        
        if let val:Double = Double(value){
            
            //calculate meter
            meter = val * 0.9144
            txtMeter.text = String(meter)
            
            //calculate foot
            foot = val * 3
            txtFoot.text = String(foot)
            
            //calculate kilometer
            kilometer = val * 0.0009144
            txtKilometer.text = String(kilometer)
            
            //calculate mile
            mile = val * 0.000568182
            txtMile.text = String(mile)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate distance according to kilometer value
     */
    @IBAction func ChangeKilometerTxt(_ sender: Any) {
        
        var meter: Double = 0.0
        var foot: Double = 0.0
        var yard: Double = 0.0
        var mile: Double = 0.0
        
        let value:String = self.txtKilometer.text!
        
        if let val:Double = Double(value){
            
            //calculate meter
            meter = val * 1000.00
            txtMeter.text = String(meter)
            
            //calculate foot
            foot = val * 3280.84
            txtFoot.text = String(foot)
            
            //calculate yard
            yard = val * 1093.6133333333
            txtYard.text = String(yard)
            
            //calculate mile
            mile = val * 0.621371
            txtMile.text = String(mile)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate distance according to mile value
     */
    @IBAction func ChangeMileTxt(_ sender: Any) {
        
        var meter: Double = 0.0
        var foot: Double = 0.0
        var yard: Double = 0.0
        var kilometer: Double = 0.0
        
        let value:String = self.txtMile.text!
        
        if let val:Double = Double(value){
            
            //calculate meter
            meter = val * 1609.34
            txtMeter.text = String(meter)
            
            //calculate foot
            foot = val * 5280.00
            txtFoot.text = String(foot)
            
            //calculate yard
            yard = val * 1760.00
            txtYard.text = String(yard)
            
            //calculate kilometer
            kilometer = val * 1.60934
            txtKilometer.text = String(kilometer)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Text box clear functions
     */
    @IBAction func TouchMeterTxt(_ sender: Any) {
        clear()
    }
    @IBAction func TouchFootTxt(_ sender: Any) {
        clear()
    }
    @IBAction func TouchYardTxt(_ sender: Any) {
        clear()
    }
    @IBAction func TouchKilometerTxt(_ sender: Any) {
        clear()
    }
    @IBAction func TouchMileTxt(_ sender: Any) {
        clear()
    }
    /*
     Hide Keyboard
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /*
     Clear textboxes
     */
    func clear(){
        txtMeter.text = ""
        txtFoot.text = ""
        txtYard.text = ""
        txtKilometer.text = ""
        txtMile.text = ""
    }
}
