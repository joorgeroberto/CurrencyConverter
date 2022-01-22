//
//  Currencies.swift
//  CurrencyConverterTests
//
//  Created by Jorge de Carvalho on 21/01/22.
//

import XCTest
@testable import CurrencyConverter

class CurrenciesTests: XCTestCase {
    func testGetCurrencyWithId() {
        let XYZ = Currencies.shared.getCurrencyWith(id: "XYZ")
        XCTAssertEqual(XYZ?.name, nil, "The currency name doesn't match")
        XCTAssertEqual(XYZ?.id, nil, "The currency id doesn't match")
        XCTAssertEqual(XYZ?.symbol, nil, "The currency symbol doesn't match")
        
        let BRL = Currencies.shared.getCurrencyWith(id: "BRL")
        XCTAssertEqual(BRL?.name, "Brazilian Real", "The currency name doesn't match")
        XCTAssertEqual(BRL?.id, "BRL", "The currency id doesn't match")
        XCTAssertEqual(BRL?.symbol, "R$", "The currency symbol doesn't match")

        let USD = Currencies.shared.getCurrencyWith(id: "USD")
        XCTAssertEqual(USD?.name, "United States Dollar", "The currency name doesn't match")
        XCTAssertEqual(USD?.id, "USD", "The currency id doesn't match")
        XCTAssertEqual(USD?.symbol, "$", "The currency symbol doesn't match")

        let EUR = Currencies.shared.getCurrencyWith(id: "EUR")
        XCTAssertEqual(EUR?.name, "Euro", "The currency name doesn't match")
        XCTAssertEqual(EUR?.id, "EUR", "The currency id doesn't match")
        XCTAssertEqual(EUR?.symbol, "€", "The currency symbol doesn't match")

        let GBP = Currencies.shared.getCurrencyWith(id: "GBP")
        XCTAssertEqual(GBP?.name, "British Pound", "The currency name doesn't match")
        XCTAssertEqual(GBP?.id, "GBP", "The currency id doesn't match")
        XCTAssertEqual(GBP?.symbol, "£", "The currency symbol doesn't match")
        
        let TRY = Currencies.shared.getCurrencyWith(id: "TRY")
        XCTAssertEqual(TRY?.name, "Turkish Lira", "The currency name doesn't match")
        XCTAssertEqual(TRY?.id, "TRY", "The currency id doesn't match")
        XCTAssertEqual(TRY?.symbol, "₺", "The currency symbol doesn't match")

        let JPY = Currencies.shared.getCurrencyWith(id: "JPY")
        XCTAssertEqual(JPY?.name, "Japanese Yen", "The currency name doesn't match")
        XCTAssertEqual(JPY?.id, "JPY", "The currency id doesn't match")
        XCTAssertEqual(JPY?.symbol, "¥", "The currency symbol doesn't match")

        let AUD = Currencies.shared.getCurrencyWith(id: "AUD")
        XCTAssertEqual(AUD?.name, "Australian Dollar", "The currency name doesn't match")
        XCTAssertEqual(AUD?.id, "AUD", "The currency id doesn't match")
        XCTAssertEqual(AUD?.symbol, "$", "The currency symbol doesn't match")

        let CHF = Currencies.shared.getCurrencyWith(id: "CHF")
        XCTAssertEqual(CHF?.name, "Swiss Franc", "The currency name doesn't match")
        XCTAssertEqual(CHF?.id, "CHF", "The currency id doesn't match")
        XCTAssertEqual(CHF?.symbol, "Fr.", "The currency symbol doesn't match")

        let CAD = Currencies.shared.getCurrencyWith(id: "CAD")
        XCTAssertEqual(CAD?.name, "Canadian Dollar", "The currency name doesn't match")
        XCTAssertEqual(CAD?.id, "CAD", "The currency id doesn't match")
        XCTAssertEqual(CAD?.symbol, "$", "The currency symbol doesn't match")

        let CNY = Currencies.shared.getCurrencyWith(id: "CNY")
        XCTAssertEqual(CNY?.name, "Chinese Yuan", "The currency name doesn't match")
        XCTAssertEqual(CNY?.id, "CNY", "The currency id doesn't match")
        XCTAssertEqual(CNY?.symbol, "¥", "The currency symbol doesn't match")

        let ARS = Currencies.shared.getCurrencyWith(id: "ARS")
        XCTAssertEqual(ARS?.name, "Argentine Peso", "The currency name doesn't match")
        XCTAssertEqual(ARS?.id, "ARS", "The currency id doesn't match")
        XCTAssertEqual(ARS?.symbol, "$", "The currency symbol doesn't match")

        let RUB = Currencies.shared.getCurrencyWith(id: "RUB")
        XCTAssertEqual(RUB?.name, "Russian Ruble", "The currency name doesn't match")
        XCTAssertEqual(RUB?.id, "RUB", "The currency id doesn't match")
        XCTAssertEqual(RUB?.symbol, "руб", "The currency symbol doesn't match")
    }
    
    func testGetCurrenciesIdList() {
        let currenciesIdsQuantity = CurrenciesIds.allCases.count
        XCTAssertEqual(currenciesIdsQuantity, 12, "The quantity of currencies doesn't match")
        
        let currenciesIds = CurrenciesIds.allCases.map({ "\($0)" }).joined(separator: ", ")
        XCTAssertEqual(currenciesIds, "BRL, USD, EUR, GBP, TRY, JPY, AUD, CHF, CAD, CNY, ARS, RUB", "The list of currencies doesn't match")
    }
}
