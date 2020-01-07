//
//  AppDelegate.swift
//  Papr
//
//  Created by Joan Disho on 30.10.17.
//  Copyright © 2017 Joan Disho. All rights reserved.
//

import UIKit
import Appcues

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
        ) -> Bool {

        let sceneCoordinator = SceneCoordinator(window: window!)
        SceneCoordinator.shared = sceneCoordinator

        sceneCoordinator.transition(to: Scene.papr)

        Appcues.shared.setup()
        
        let userId = "appcues---tester"
        let customProperties = ["name": "Appcues Tester", "email": "appcues@tester.com"]
        let userProfileUpdate = AppcuesUserProfileUpdate(customProperties: customProperties)
        Appcues.shared.identifyUserWithId(userId: userId)
        Appcues.shared.record(userProfileUpdate: userProfileUpdate)
        
        return true
    }
    
    func application(_ app: UIApplication,
                    open url: URL,
                    options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
      return Appcues.shared.application(app, openURL: url, options: options)
    }

    func applicationWillResignActive(_ application: UIApplication) {}
    func applicationDidEnterBackground(_ application: UIApplication) {}
    func applicationWillEnterForeground(_ application: UIApplication) {}
    func applicationDidBecomeActive(_ application: UIApplication) {}
    func applicationWillTerminate(_ application: UIApplication) {}
}

