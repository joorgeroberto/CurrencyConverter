//
//  Currencies.swift
//  CurrencyConverter
//
//  Created by Jorge de Carvalho on 21/01/22.
//

import Foundation

public enum CurrenciesIds: String, CaseIterable {
    case BRL
    case USD
    case EUR
    case GBP
    case TRY
    case JPY
    case AUD
    case CHF
    case CAD
    case CNY
    case ARS
    case RUB
}

class Currency {
    let id: String
    let name: String
    let symbol: String
    
    init(id: String, name: String, symbol: String) {
        self.id = id
        self.name = name
        self.symbol = symbol
    }
}

class Currencies {
    private var currencies: [Currency] = []

    static var shared: Currencies = {
        let instance = Currencies()
        return instance
    }()

    private init() {
        currencies.append(Currency(id: "BRL", name: "Brazilian Real", symbol: "R$"))
        currencies.append(Currency(id: "USD", name: "United States Dollar", symbol: "$"))
        currencies.append(Currency(id: "EUR", name: "Euro", symbol: "€"))
        currencies.append(Currency(id: "GBP", name: "British Pound", symbol: "£"))
        currencies.append(Currency(id: "TRY", name: "Turkish Lira", symbol: "₺"))
        currencies.append(Currency(id: "JPY", name: "Japanese Yen", symbol: "¥"))

        currencies.append(Currency(id: "AUD", name: "Australian Dollar", symbol: "$"))
        currencies.append(Currency(id: "CHF", name: "Swiss Franc", symbol: "Fr."))
        currencies.append(Currency(id: "CAD", name: "Canadian Dollar", symbol: "$"))
        currencies.append(Currency(id: "CNY", name: "Chinese Yuan", symbol: "¥"))
        currencies.append(Currency(id: "ARS", name: "Argentine Peso", symbol: "$"))
        currencies.append(Currency(id: "RUB", name: "Russian Ruble", symbol: "руб"))
    }
    
    func getCurrencyWith(id: String) -> Currency? {
        if let currency = currencies.first(where: {$0.id == id}) {
            return currency
        }
        
        return nil
    }
}
