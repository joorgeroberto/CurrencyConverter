//
//  OptionsViewController.swift
//  CurrencyConverter
//
//  Created by Jorge de Carvalho on 21/01/22.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "DefaultCurrencyTableViewCell", bundle: nil), forCellReuseIdentifier: "DefaultCurrencyTableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
}

extension SettingsViewController {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCurrencyTableViewCell", for: indexPath) as? DefaultCurrencyTableViewCell
        else { fatalError("DefaultCurrencyTableViewCell not found") }
        
        let isFirstCell = indexPath.row == 0
        if isFirstCell {
            let defaultCurrency = DefaultCurrency(id: "BRL", title: "Your Country Currency", imageName: "BRL", name: "Brazilian Real", symbol: "R$")
            cell.setup(defaultCurrency)
            
            return cell
        }

        let defaultCurrency = DefaultCurrency(id: "USD", title: "Your Favorite Currency", imageName: "USD", name: "United States Dollar", symbol: "$")
        cell.setup(defaultCurrency)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       tableView.deselectRow(at: indexPath, animated: true)
   }
    
}
