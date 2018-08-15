//
//  SpeedViewController.swift
//  UnitConvertor
//
//  Created by Shalitha Mihiranga on 8/13/18.
//  Copyright © 2018 Shalitha Mihiranga. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var txtMeterPerSec: UITextField!
    @IBOutlet weak var txtFeetPerMin: UITextField!
    @IBOutlet weak var txtKilometerPerHour: UITextField!
    @IBOutlet weak var txtMilesPerHour: UITextField!
    
    /*
     * Calaculate speed according to meter per second value
     */
    @IBAction func ChangeMeterPerSecTxt(_ sender: Any) {
        
        var feetPerMin: Double = 0.0
        var kilometerPerHour: Double = 0.0
        var milesPerHour: Double = 0.0
        
        let value:String = self.txtMeterPerSec.text!
        
        if let val:Double = Double(value){
            
            //calculate feetPerMin
            feetPerMin = val * 3.28084
            txtFeetPerMin.text = String(feetPerMin)
            
            //calculate kilometerPerHour
            kilometerPerHour = val * 3.6
            txtKilometerPerHour.text = String(kilometerPerHour)
            
            //calculate milesPerHour
            milesPerHour = val * 2.23694
            txtMilesPerHour.text = String(milesPerHour)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate speed according to feet per second value
     */
    @IBAction func ChangeFeetPerMin(_ sender: Any) {
        
        var meterPerSec: Double = 0.0
        var kilometerPerHour: Double = 0.0
        var milesPerHour: Double = 0.0
        
        let value:String = self.txtFeetPerMin.text!
        
        if let val:Double = Double(value){
            
            //calculate meterPerSec
            meterPerSec = val * 0.3048
            txtMeterPerSec.text = String(meterPerSec)
            
            //calculate kilometerPerHour
            kilometerPerHour = val * 1.09728
            txtKilometerPerHour.text = String(kilometerPerHour)
            
            //calculate milesPerHour
            milesPerHour = val * 0.681818
            txtMilesPerHour.text = String(milesPerHour)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate speed according to kilometre per hour value
     */
    @IBAction func ChangeKilometerPerHourTxt(_ sender: Any) {
        
        var meterPerSec: Double = 0.0
        var feetPerMin: Double = 0.0
        var milesPerHour: Double = 0.0
        
        let value:String = self.txtKilometerPerHour.text!
        
        if let val:Double = Double(value){
            
            //calculate meterPerSec
            meterPerSec = val * 0.277778
            txtMeterPerSec.text = String(meterPerSec)
            
            //calculate feetPerMin
            feetPerMin = val * 0.911344
            txtFeetPerMin.text = String(feetPerMin)
            
            //calculate milesPerHour
            milesPerHour = val * 0.621371
            txtMilesPerHour.text = String(milesPerHour)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate speed according to miles per hour value
     */
    @IBAction func ChangeMilesPerHourTxt(_ sender: Any) {
        
        var meterPerSec: Double = 0.0
        var feetPerMin: Double = 0.0
        var kilometerPerHour: Double = 0.0
        
        let value:String = self.txtMilesPerHour.text!
        
        if let val:Double = Double(value){
            
            //calculate meterPerSec
            meterPerSec = val * 0.44704
            txtMeterPerSec.text = String(meterPerSec)
            
            //calculate feetPerMin
            feetPerMin = val * 1.46667
            txtFeetPerMin.text = String(feetPerMin)
            
            //calculate kilometerPerHour
            kilometerPerHour = val * 1.60934
            txtKilometerPerHour.text = String(kilometerPerHour)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Text box clear functions
     */
    @IBAction func TouchMeterPerSecTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchFeetPerMinTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchKilometerPerHourTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchMilesPerHourTxt(_ sender: Any) {
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
        txtMeterPerSec.text = ""
        txtFeetPerMin.text = ""
        txtKilometerPerHour.text = ""
        txtMilesPerHour.text = ""
    }

}
