//
//  EnumToShangeCurrencyVC.swift
//  Currency Converter
//
//  Created by MineDest on 3/4/20.
//  Copyright © 2020 MineDest. All rights reserved.
//
import UIKit
extension ChangeCurrencyVC {
    enum Currency: String, CaseIterable { // swiftlint:disable:this type_body_length
        case USD, UAH, AED, ARS, AUD, BGN, BRL, BSD, CAD, CHF, CLP, CNY, COP, CZK, DKK, DOP, EGP, EUR, FJD, GBP, GTQ
        case INR, ISK, JPY, KRW, KZT, MXN, MYR, NOK, NZD, PAB, PEN, PHP, PKR, PLN, PYG, RON, RUB, SAR, SEK, SGD
        case THB, TRY, TWD, UYU, ZAR, HKD, HRK, HUF, IDR, ILS
        var flag: String {
            switch self {
            case .USD :
                return "🇺🇸"
            case .UAH :
                return "🇺🇦"
            case .AED:
                return "🇦🇪"
            case .ARS:
                return "🇦🇷"
            case .AUD:
                return "🇦🇺"
            case .BGN:
                return "🇧🇬"
            case .BRL:
                return "🇧🇷"
            case .BSD:
                return "🇧🇸"
            case .CAD:
                return "🇨🇦"
            case .CHF:
                return "🇨🇭"
            case .CLP:
                return "🇨🇱"
            case .CNY:
                return "🇨🇳"
            case .COP:
                return "🇨🇴"
            case .CZK:
                return "🇨🇿"
            case .DKK:
                return "🇩🇰"
            case .DOP:
                return "🇩🇴"
            case .EGP:
                return "🇪🇬"
            case .EUR:
                return "🇪🇺"
            case .FJD:
                return "🇫🇯"
            case .GBP:
                return "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
            case .GTQ:
                return "🇬🇹"
            case .HKD:
                return "🇭🇰"
            case .HRK:
                return "🇭🇷"
            case .HUF:
                return "🇭🇺"
            case .IDR:
                return "🇮🇩"
            case .ILS:
                return "🇮🇱"
            case .INR:
                return "🇮🇳"
            case .ISK:
                return "🇮🇸"
            case .JPY:
                return "🇯🇵"
            case .KRW:
                return "🇰🇷"
            case .KZT:
                return "🇰🇿"
            case .MXN:
                return "🇲🇽"
            case .MYR:
                return "🇲🇾"
            case .NOK:
                return "🇳🇴"
            case .NZD:
                return "🇳🇿"
            case .PAB:
                return "🇵🇦"
            case .PEN:
                return "🇵🇪"
            case .PHP:
                return "🇵🇭"
            case .PKR:
                return "🇵🇰"
            case .PLN:
                return "🇵🇱"
            case .PYG:
                return "🇵🇾"
            case .RON:
                return "🇷🇴"
            case .RUB:
                return "🇷🇺"
            case .SAR:
                return "🇸🇦"
            case .SEK:
                return "🇸🇪"
            case .SGD:
                return "🇸🇬"
            case .THB:
                return "🇹🇭"
            case .TRY:
                return "🇹🇷"
            case .TWD:
                return "🇹🇼"
            case .UYU:
                return "🇺🇾"
            case .ZAR:
                return "🇳🇦"
            }
        }
        var name: String {
            switch self {
            case .USD :
                return "Долар США"
            case .UAH :
                return "Гривня"
            case .AED:
                return "ОАЕ Діхрам"
            case .ARS:
                return "Аргентинський Песо"
            case .AUD:
                return "Австралійський долар"
            case .BGN:
                return "Болгарський лев"
            case .BRL:
                return "Бразильський реал"
            case .BSD:
                return "Багамський Долар"
            case .CAD:
                return "Канадський долар"
            case .CHF:
                return "Швейцарський Франк"
            case .CLP:
                return "Чилійский Песо"
            case .CNY:
                return "Юань Ренмінбі"
            case .COP:
                return "Колумбійський Песо"
            case .CZK:
                return "Чеська Крона"
            case .DKK:
                return "Данська Крона"
            case .DOP:
                return "Домініканський Песо"
            case .EGP:
                return "Єгипетський Фунт"
            case .EUR:
                return "Євро"
            case .FJD:
                return "Долар Фіджі"
            case .GBP:
                return "Фунт Стерлінг"
            case .GTQ:
                return "Кветцал"
            case .HKD:
                return "Долар Гонконгу"
            case .HRK:
                return "Куна"
            case .HUF:
                return "Форінт"
            case .IDR:
                return "Рупія"
            case .ILS:
                return "Ізраїльський Шекель"
            case .INR:
                return "Індійська Рупія"
            case .ISK:
                return "Ісландська Крона"
            case .JPY:
                return "Йена"
            case .KRW:
                return "Вон"
            case .KZT:
                return "Тенге"
            case .MXN:
                return "Мексиканський Песо"
            case .MYR:
                return "Малазійський Рінггіт"
            case .NOK:
                return "Норвезька Крона"
            case .NZD:
                return "Новозеландський Долар"
            case .PAB:
                return "BБальбоа"
            case .PEN:
                return "Нуево Соль"
            case .PHP:
                return "Філіпінський Песо"
            case .PKR:
                return "Пакистанська Рупія"
            case .PLN:
                return "Злотий"
            case .PYG:
                return "Гуарані"
            case .RON:
                return "Румунський Лей"
            case .RUB:
                return "Російський Рубль"
            case .SAR:
                return "Саудівський Реал"
            case .SEK:
                return "Шведська Крона"
            case .SGD:
                return "Сингапурський Долар"
            case .THB:
                return "Бат"
            case .TRY:
                return "Турецька Ліра"
            case .TWD:
                return "Новий Тайванський Долар"
            case .UYU:
                return "Уругвайський Песо"
            case .ZAR:
                return "Ранд"
            }
        }
    }
}
