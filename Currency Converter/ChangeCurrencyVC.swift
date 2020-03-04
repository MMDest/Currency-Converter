//
//  ChangeCurrencyVC.swift
//  Currency Converter
//
//  Created by MineDest on 2/29/20.
//  Copyright © 2020 MineDest. All rights reserved.
//

import UIKit
class ChangeCurrencyVC: UITableViewController {

    var selectCurrency = ""
    var choose: Bool?
    var buf = ""
    var myCurrency = ["USD", "UAH", "AED", "ARS", "AUD", "BGN", "BRL", "BSD", "CAD", "CHF", "CLP",
                        "CNY", "COP", "CZK", "DKK", "DOP", "EGP", "EUR", "FJD", "GBP", "GTQ", "INR", "ISK",
                        "JPY", "KRW", "KZT", "MXN", "MYR", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN",
                        "PYG", "RON", "RUB", "SAR", "SEK", "SGD", "THB", "TRY", "TWD", "UYU", "ZAR", "HKD",
                        "HRK", "HUF", "IDR", "ILS"]
    var myValue: [Double] = []
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
    }
    // MARK: Connect api
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: Set number of row
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCurrency.count
    }
    // MARK: Add data to tableView
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
            as? CustomTableViewCell else {
                return CustomTableViewCell()
        }
        cell.currencyLabel?.text = myCurrency[indexPath.row]
        cell.emojiLabel.text = Currency(rawValue: Currency.RawValue(myCurrency[indexPath.row]))?.flag ?? ""
        cell.currencyCountryLabel.text =
        Currency(rawValue: Currency.RawValue(myCurrency[indexPath.row]))?.name ?? ""
        return cell
    }
    // MARK: Set height for row
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    // MARK: Send date to VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "backToConverter" else {return}
        if let indexPath = tableView.indexPathForSelectedRow {
            let dvc = segue.destination as? ViewController
            if self.choose == true {
                self.selectCurrency = self.myCurrency[indexPath.row]
                dvc?.first = (Currency(rawValue: Currency.RawValue(myCurrency[indexPath.row]))?.flag ?? "") +
                    " " + selectCurrency
                dvc?.second = buf
            } else {
                self.selectCurrency = self.myCurrency[indexPath.row]
                dvc?.second = (Currency(rawValue: Currency.RawValue(myCurrency[indexPath.row]))?.flag ?? "") +
                    " " + selectCurrency
                dvc?.first = buf
            }
        }
    }
}
