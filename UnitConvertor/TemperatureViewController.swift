//
//  TemperatureViewControlle.swift
//  UnitConvertor
//
//  Created by Shalitha Mihiranga on 8/11/18.
//  Copyright © 2018 Shalitha Mihiranga. All rights reserved.
//

import UIKit

class TemperatureViewControlle: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var txtCelcius: UITextField!
    @IBOutlet weak var txtFarenheit: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    
    /*
     * Calaculate temperature according to celcius value
     */
    @IBAction func ChangeCelciusTxt(_ sender: Any) {
        
        var farenheit: Double = 0.0
        var kelvin: Double = 0.0
        
        let value:String = self.txtCelcius.text!
        
        if let val:Double = Double(value){
            
            //calculate farenheit
            farenheit = (val * 1.8) + 32
            txtFarenheit.text = String(farenheit)
            
            //calculate kelvin
            kelvin = val + 273.15
            txtKelvin.text = String(kelvin)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate temperature according to farenheit value
     */
    @IBAction func ChangeFarenheitTxt(_ sender: Any) {
        
        var celcius: Double = 0.0
        var kelvin: Double = 0.0
        
        let value:String = self.txtFarenheit.text!
        
        if let val:Double = Double(value){
            
            //calculate celcius
            celcius = (val - 32) / 1.8
            txtCelcius.text = String(celcius)
            
            //calculate kelvin
            kelvin = (val + 459.67) / 1.8
            txtKelvin.text = String(kelvin)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate temperature according to kelvin value
     */
    @IBAction func ChangeKelvinTxt(_ sender: Any) {
        var celcius: Double = 0.0
        var farenheit: Double = 0.0
        
        let value:String = self.txtKelvin.text!
        
        if let val:Double = Double(value){
            
            //calculate celcius
            celcius = val - 273.15
            txtCelcius.text = String(celcius)
            
            //calculate farenheit
            farenheit = (val * 1.8) - 459.67
            txtFarenheit.text = String(farenheit)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Text box clear functions
     */
    @IBAction func TouchCelciusTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchFarenheitTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchKelvinTxt(_ sender: Any) {
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
        txtCelcius.text = ""
        txtFarenheit.text = ""
        txtKelvin.text = ""
    }
}

