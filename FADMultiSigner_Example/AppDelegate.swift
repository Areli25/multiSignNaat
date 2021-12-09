//
//  AppDelegate.swift
//  FADMultiSigner_Example
//
//  Created by Daniel Acosta on 05/07/21.
//

import UIKit
import FADMultiSignerPod


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var orientationLock: UIInterfaceOrientationMask = .portrait

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        FADMultiSigner.SDKWillResignActive()
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        FADMultiSigner.SDKDidBecomeActive()
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return orientationLock
    }



}

extension AppDelegate : FADMultiSignerDelegate {
    func doFADChangeOrientation(orientation: UIInterfaceOrientationMask) {
        self.orientationLock = orientation
    }
}
