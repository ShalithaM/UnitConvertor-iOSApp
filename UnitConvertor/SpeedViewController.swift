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
    

    /*
     Hide Keyboard
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
