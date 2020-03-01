//
//  ChangeCurrencyVC.swift
//  Currency Converter
//
//  Created by MineDest on 2/29/20.
//  Copyright © 2020 MineDest. All rights reserved.
//

import UIKit

class ChangeCurrencyVC: UITableViewController {

    
    var myCurrency:[String] = []
    var myValue:[Double] = []
    var count = 0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://api.exchangeratesapi.io/latest")
            
            let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                if error != nil
                {
                    print("Error")
                }
                else
                {
                    if let content = data
                    {
                        do
                        {
                            let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            
                         print(myJson)
                            if let rates = myJson["rates"] as? NSDictionary{
                                for(key,values) in rates
                                {
                                    self.myCurrency.append((key as? String)!)
                                    self.myValue.append((values as? Double)!)
                                    
                                }
                                self.myCurrency.append("EUR")
                                self.myValue.append(1.0)
                            }
                        }
                        catch
                        {
                            
                        }
                    }
                }
                
            }
             
            task.resume()
    }


    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myCurrency.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) as! CustomTableViewCell

        cell.currencyLabel?.text = myCurrency[indexPath.row]
                 let findCurrency = myCurrency[indexPath.row]
                 switch findCurrency {
                     case "AUD":
                         cell.emojiLabel.text = "🇦🇺"
                         cell.currencyCountryLabel.text = "Австралійський долар"
                     case "BGN":
                         cell.emojiLabel.text = "🇧🇬"
                         cell.currencyCountryLabel.text = "Болгарський лев"
                     case "BRL":
                         cell.emojiLabel.text = "🇧🇷"
                         cell.currencyCountryLabel.text = "Бразильський реал"
                     case "CAD":
                         cell.emojiLabel.text = "🇨🇦"
                         cell.currencyCountryLabel.text = "Канадський долар"
                     case "CHF":
                         cell.emojiLabel.text = "🇨🇭"
                         cell.currencyCountryLabel.text = "Швейцарський франк"
                     case "CNY":
                         cell.emojiLabel.text = "🇨🇳"
                         cell.currencyCountryLabel.text = "Юань Женьміньбі "
                     case "CZK":
                         cell.emojiLabel.text = "🇨🇿"
                         cell.currencyCountryLabel.text = "Чеська крона"
                     case "DKK":
                         cell.emojiLabel.text = "🇩🇰"
                         cell.currencyCountryLabel.text = "Данська крона"
                     case "GBP":
                         cell.emojiLabel.text = "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
                         cell.currencyCountryLabel.text = "Англійський фунт"
                     case "HKD":
                         cell.emojiLabel.text = "🇭🇰"
                         cell.currencyCountryLabel.text = "Гонконгський долар"
                     case "HRK":
                         cell.emojiLabel.text = "🇭🇷"
                         cell.currencyCountryLabel.text = "Хорватська куна"
                     case "HUF":
                         cell.emojiLabel.text = "🇭🇺"
                         cell.currencyCountryLabel.text = "Угорський форинт"
                     case "IDR":
                         cell.emojiLabel.text = "🇮🇩"
                         cell.currencyCountryLabel.text = "Індонезійська рупія"
                     case "ILS":
                         cell.emojiLabel.text = "🇮🇱"
                         cell.currencyCountryLabel.text = "Ізраїльський шекель"
                     case "INR":
                         cell.emojiLabel.text = "🇮🇳"
                         cell.currencyCountryLabel.text = "Індійська рупія"
                     case "ISK":
                         cell.emojiLabel.text = "🇮🇸"
                         cell.currencyCountryLabel.text = "Ісландська крона"
                     case "JPY":
                         cell.emojiLabel.text = "🇯🇵"
                         cell.currencyCountryLabel.text = "Японська єна"
                     case "KRW":
                         cell.emojiLabel.text = "🇰🇷"
                         cell.currencyCountryLabel.text = "Південнокорейський вон"
                     case "MXN":
                         cell.emojiLabel.text = "🇲🇽"
                         cell.currencyCountryLabel.text = "Мексиканський песо"
                     case "MYR":
                         cell.emojiLabel.text = "🇲🇾"
                         cell.currencyCountryLabel.text = "малайзійський рингіт"
                     case "NZD":
                         cell.emojiLabel.text = "🇳🇿"
                         cell.currencyCountryLabel.text = "Новозеландський долар"
                     case "PHP":
                         cell.emojiLabel.text = "🇵🇭"
                         cell.currencyCountryLabel.text = "Філіппінський песо"
                     case "PLN":
                         cell.emojiLabel.text = "🇵🇱"
                         cell.currencyCountryLabel.text = "Польський злотий"
                     case "RON":
                         cell.emojiLabel.text = "🇷🇴"
                         cell.currencyCountryLabel.text = "Румунський лей"
                     case "RUB":
                         cell.emojiLabel.text = "🇷🇺"
                         cell.currencyCountryLabel.text = "Російський рубль"
                     case "SEK":
                         cell.emojiLabel.text = "🇸🇪"
                         cell.currencyCountryLabel.text = "Шведська крона"
                     case "SGD":
                         cell.emojiLabel.text = "🇸🇬"
                         cell.currencyCountryLabel.text = "Сінгапурський долар"
                     case "THB":
                         cell.emojiLabel.text = "🇹🇭"
                         cell.currencyCountryLabel.text = "Тайський бат"
                     case "TRY":
                         cell.emojiLabel.text = "🇹🇷"
                         cell.currencyCountryLabel.text = "Турецька ліра"
                     case "ZAR":
                         cell.emojiLabel.text = "🇿🇦"
                         cell.currencyCountryLabel.text = "Південноафриканський ранд"
                     case "USD":
                         cell.emojiLabel.text = "🇺🇸"
                         cell.currencyCountryLabel.text = "Долар США"
                    case "EUR":
                        cell.emojiLabel.text = "🇪🇺"
                        cell.currencyCountryLabel.text = "Євро"
         
         
         
                 default:
                     print(myCurrency[indexPath.row])
                 }
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

      



}
