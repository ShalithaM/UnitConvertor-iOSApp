//
//  WeightViewController.swift
//  UnitConvertor
//
//  Created by Shalitha Mihiranga on 8/11/18.
//  Copyright © 2018 Shalitha Mihiranga. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var txtGram: UITextField!
    @IBOutlet weak var txtKilogram: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    @IBOutlet weak var txtOunce: UITextField!
    
    
    /*
     * Calaculate weight according to gram value
     */
    @IBAction func changeGramTxt(_ sender: UITextField) {
        var kilogram: Double = 0.0
        var pound: Double = 0.0
        var ounce: Double = 0.0
        
        let value:String = self.txtGram.text!
        
        if let val:Double = Double(value){
            
            //calculate kilogram
            kilogram = val / 1000.0
            txtKilogram.text = String(kilogram)
            
            //calculate pound
            pound = val / 453.592
            txtPound.text = String(pound)
            
            //calculate ounce
            ounce = val / 28.3495
            txtOunce.text = String(ounce)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
  
    /*
     * Calaculate weight according to kilogram value
     */
    @IBAction func ChangeKilogramTxt(_ sender: Any) {
        
        var gram: Double = 0.0
        var pound: Double = 0.0
        var ounce: Double = 0.0
        
        let value:String = self.txtKilogram.text!
        
        if let val:Double = Double(value){
            
            //calculate gram
            gram = val * 1000.0
            txtGram.text = String(gram)
            
            //calculate pound
            pound = val * 2.20462
            txtPound.text = String(pound)
            
            //calculate ounce
            ounce = val * 35.274
            txtOunce.text = String(ounce)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate weight according to pound value
     */
    @IBAction func ChangePoundTxt(_ sender: Any) {
        
        var gram: Double = 0.0
        var kilogram: Double = 0.0
        var ounce: Double = 0.0
        
        let value:String = self.txtPound.text!
        
        if let val:Double = Double(value){
            
            //calculate gram
            gram = val * 453.592
            txtGram.text = String(gram)
            
            //calculate kilogram
            kilogram = val * 0.453592
            txtKilogram.text = String(kilogram)
            
            //calculate ounce
            ounce = val * 16
            txtOunce.text = String(ounce)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Calaculate weight according to ounce value
     */
    @IBAction func ChangeOunceTxt(_ sender: Any) {
        
        var gram: Double = 0.0
        var kilogram: Double = 0.0
        var pound: Double = 0.0
        
        let value:String = self.txtOunce.text!
        
        if let val:Double = Double(value){
            
            //calculate gram
            gram = val * 28.3495
            txtGram.text = String(gram)
            
            //calculate kilogram
            kilogram = val * 0.0283495
            txtKilogram.text = String(kilogram)
            
            //calculate ounce
            pound = val * 0.0625
            txtPound.text = String(pound)
            
        }
        else {
            print("Something went wrong")
            clear()
        }
    }
    
    /*
     * Text box clear functions
     */
    @IBAction func TouchGramTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchKilogramTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchPoundTxt(_ sender: Any) {
        clear()
    }
    
    @IBAction func TouchOunceTxt(_ sender: Any) {
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
        txtGram.text = ""
        txtKilogram.text = ""
        txtPound.text = ""
        txtOunce.text = ""
    }
    
}

