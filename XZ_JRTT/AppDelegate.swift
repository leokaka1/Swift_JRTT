//
//  AppDelegate.swift
//  XZ_JRTT
//
//  Created by 曹笑竹 on 2019/12/19.
//  Copyright © 2019 beyondSoft. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = MyTabBarController()
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        return true
    }
}

