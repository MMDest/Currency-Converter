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
    @IBOutlet weak var currencyTV: UITableView!
    var first = "🇺🇦 UAH"
    var second = "🇺🇸 USD"
    var firstValue = 0.0
    var secondValue = 0.0
    var choose = true
    // MARK: Override viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        firstValue = 0.0
        firstButton.setTitle(first, for: .normal)
        secondButton.setTitle(second, for: .normal)
        var firstStr = firstButton.title(for: .normal) ?? "Error"
        firstStr.remove(at: firstStr.startIndex)
        firstStr.remove(at: firstStr.startIndex)
        var secondStr = secondButton.title(for: .normal) ?? "Error"
        secondStr.remove(at: secondStr.startIndex)
        secondStr.remove(at: secondStr.startIndex)
        let url = URL(string: "https://api.exchangerate-api.com/v4/latest/\(firstStr)")
        let task = URLSession.shared.dataTask(with: url!) { (data, _, error) in
                if error != nil {
                    print("Error")
                } else {
                if let content = data {
                    do {
                        let myJson = try JSONSerialization.jsonObject(with: content, options:
                            JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            if let rates = myJson["rates"] as? NSDictionary {
                                guard let serchValue = (rates["\(secondStr)"] as? Double) else {
                                    return
                                }
                                self.firstValue = serchValue
                                print(self.firstValue)
                            }
                        } catch {
                    }
                }
            }
        }
        task.resume()
    }
    // MARK: Segue to ChangeCurrency
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstButtonSegue"{
            let dvc = segue.destination as? ChangeCurrencyVC
            dvc?.choose = true
            dvc?.buf = secondButton.title(for: .normal) ?? "Error"
        } else if segue.identifier == "secondButtonSegue" {
            let dvc = segue.destination as? ChangeCurrencyVC
            dvc?.choose = false
            dvc?.buf = firstButton.title(for: .normal) ?? "Error"
        }
    }
    // MARK: Convert button
//    @IBAction func convertButton(_ sender: UIButton) {
//        if let value = Double(firstLabel.text!.replacingOccurrences(of: ",", with: ".")) {
//            self.secondValue = value * self.firstValue
//               } else {
//                   print("Error")
//                   return
//               }
//        secondLabel.text = String(format: "%.2f", secondValue)
//    }
    @IBAction func reChangeCurrency(_ sender: UIButton) {
        let buf = first
        first = second
        second = buf
        firstButton.setTitle(first, for: .normal)
        secondButton.setTitle(second, for: .normal)
        var firstStr = firstButton.title(for: .normal) ?? "Error"
        firstStr.remove(at: firstStr.startIndex)
        firstStr.remove(at: firstStr.startIndex)
        var secondStr = secondButton.title(for: .normal) ?? "Error"
        secondStr.remove(at: secondStr.startIndex)
        secondStr.remove(at: secondStr.startIndex)
        let url = URL(string: "https://api.exchangerate-api.com/v4/latest/\(firstStr)")
        let task = URLSession.shared.dataTask(with: url!) { (data, _, error) in
                if error != nil {
                    print("Error")
                } else {
                if let content = data {
                    do {
                        let myJson = try JSONSerialization.jsonObject(with: content, options:
                            JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            if let rates = myJson["rates"] as? NSDictionary {
                                guard let serchValue = (rates["\(secondStr)"] as? Double) else {
                                    return
                                }
                                self.firstValue = serchValue
                                print(self.firstValue)
                            }
                        } catch {
                    }
                }
            }
        }
        task.resume()
    }
}
