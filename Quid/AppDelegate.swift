//
//  AppDelegate.swift
//  Quid
//
//  Created by Jorge Raul Ovalle Zuleta on 10/14/15.
//  Copyright © 2015 jorgeovalle. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appDependencies = AppDependencies()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        appDependencies.installRootViewControllerIntoWindow(window!)
        return true
    }
}

