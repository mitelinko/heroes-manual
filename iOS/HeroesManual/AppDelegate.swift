//
//  AppDelegate.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        if UserDefaults.standard.integer(forKey: USER_METADATA.agreementKey) != USER_METADATA.currentAgreementValue {
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            self.window?.rootViewController = storyboard.instantiateViewController(withIdentifier: "UserAgreementViewController")
//            self.window?.makeKeyAndVisible()
//        }
        if UserDefaults.standard.integer(forKey: USER_METADATA.agreementKey) == USER_METADATA.currentAgreementValue {
            self.window = UIWindow(frame: UIScreen.main.bounds)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            self.window?.rootViewController = storyboard.instantiateViewController(withIdentifier: "MainNavController")
            let navController = self.window?.rootViewController as! UINavigationController
            if let userType = UserDefaults.standard.string(forKey: USER_METADATA.professionKey) {
                if userType != USER_PROFESSION.none.rawValue {
                    let professionViewController = storyboard.instantiateViewController(withIdentifier: LANDING_PAGE_DICTIONARY[userType]!)
                    navController.setViewControllers([navController.viewControllers[0], professionViewController], animated: false)
                }
            }
            self.window?.makeKeyAndVisible()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

