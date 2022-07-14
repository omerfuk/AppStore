//
//  Models.swift
//  AppStore
//
//  Created by Ömer Faruk Kılıçaslan on 14.07.2022.
//

import UIKit

class AppCategory: NSObject {
    
    var name:String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        
        
        
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var apps = [App]()
        //Logic
        let lamborghiniApp = App()
        lamborghiniApp.name = "Disney Build It: Lamborghini"
        lamborghiniApp.imageName = "image1"
        lamborghiniApp.category = "Entertainment"
        lamborghiniApp.price = NSNumber(floatLiteral: 3.99)
        apps.append(lamborghiniApp)
        
        bestNewAppsCategory.apps = apps
        
        
        let bestNewGamesCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Games"
        
        var bestNewGamesApps = [App]()
        
        let bmwApp = App()
        bmwApp.name = "Bmw App"
        bmwApp.imageName = "image2"
        bmwApp.category = "Games"
        bmwApp.price = NSNumber(floatLiteral: 2.99)
        bestNewGamesApps.append(bmwApp)
        bestNewAppsCategory.apps = bestNewGamesApps
        
        
        return [bestNewAppsCategory, bestNewGamesCategory]
        
        
    }
    
}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
}
