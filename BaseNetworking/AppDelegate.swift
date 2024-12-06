//
//  AppDelegate.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navVC = UINavigationController(rootViewController: ViewController())
        window.rootViewController = navVC
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }

}

