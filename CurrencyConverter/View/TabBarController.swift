//
//  TabBarController.swift
//  CurrencyConverter
//
//  Created by Jorge de Carvalho on 21/01/22.
//

import UIKit
import Foundation

class TabBarController: UITabBarController {
    
    static let shared = TabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewControllers()
    }
    
    func loadViewControllers() {
        var arrayViews = [UIViewController]()

        if let listViewController = UIStoryboard(name: "ListViewController", bundle: nil).instantiateInitialViewController() as? ListViewController {
            let image = UIImage(named: "listIcon")
            listViewController.tabBarItem = UITabBarItem(title: "List", image: image, selectedImage: image)

            arrayViews.append(listViewController)
        }
        
        if let convertViewController = UIStoryboard(name: "ConvertViewController", bundle: nil).instantiateInitialViewController() as? ConvertViewController {
            let image = UIImage(named: "convertIcon")
            convertViewController.tabBarItem = UITabBarItem(title: "Convert", image: image, selectedImage: image)

            arrayViews.append(convertViewController)
        }
        
        if let settingsViewController = UIStoryboard(name: "SettingsViewController", bundle: nil).instantiateInitialViewController() as? SettingsViewController {
            let image = UIImage(named: "settingsIcon")
            settingsViewController.tabBarItem = UITabBarItem(title: "Settings", image: image, selectedImage: image)

            arrayViews.append(settingsViewController)
        }

        viewControllers = arrayViews
        
        self.selectedIndex = 2
    }
}
