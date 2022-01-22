//
//  SelectDefaultCountryTableViewCell.swift
//  CurrencyConverter
//
//  Created by Jorge de Carvalho on 22/01/22.
//

import UIKit

struct DefaultCurrency {
    let id: String
    let title: String
    let imageName: String
    let name: String
    let symbol: String
}

class DefaultCurrencyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var currecyIdLabel: UILabel!
    @IBOutlet weak var currecyNameLabel: UILabel!
    
    func setup(_ defaultCurrency: DefaultCurrency) {
        currecyIdLabel.text = defaultCurrency.id
        titleLabel.text = defaultCurrency.title
        flagImage.image = UIImage(named: defaultCurrency.imageName)
        currecyNameLabel.text = "\(defaultCurrency.name) (\(defaultCurrency.symbol))"
    }
    
}
