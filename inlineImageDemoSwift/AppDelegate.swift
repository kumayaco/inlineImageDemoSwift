//
//  AppDelegate.swift
//  inlineImageDemoSwift
//
//  Created by vincent on 2015/02/06.
//  Copyright (c) 2015年 Vincent Chen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.backgroundColor = UIColor.whiteColor()
        
        var mainViewController = ViewController()
        
        self.window?.rootViewController = mainViewController
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

