//
//  AppDelegate.swift
//  Quizer
//
//  Created by Veysal on 31.08.22.
//
import UIKit
import presentation


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let vc = FirstViewController()
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
//
        return true
    }
}

