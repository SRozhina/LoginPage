//
//  AppDelegate.swift
//  LoginPage
//
//  Created by Sofia on 26/06/2018.
//  Copyright © 2018 Sofia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window = self.window else { fatalError("No window") }
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        
        return true
    }

}

