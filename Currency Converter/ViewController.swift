//
//  ViewController.swift
//  Currency Converter
//
//  Created by MineDest on 2/21/20.
//  Copyright © 2020 MineDest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstLabel: UITextField!
    @IBOutlet weak var secondLabel: UITextField!
    
    var first:String = "EUR"
    var second:String = "USD"
    var firstValue:Double = 0;
    var secondValue:Double = 0;
    var choose:Bool?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstButton.setTitle(first, for: .normal)
        secondButton.setTitle(second, for: .normal)
        
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstButtonSegue"{
            let dvc = segue.destination as? ChangeCurrencyVC
            dvc?.choose = true
        } else if segue.identifier == "secondButtonSegue" {
            let dvc = segue.destination as? ChangeCurrencyVC
            dvc?.choose = false
        }
    }
    
    @IBAction func ChangeToOpposite(_ sender: UIButton) {
    }
    
   
    @IBAction func ConvertButton(_ sender: UIButton) {
        
        	
        
    }
    
}

