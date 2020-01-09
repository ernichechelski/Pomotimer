//
//  AppDelegate.swift
//  Pomotimer
//
//  Created by Ernest Chechelski on 09/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//


import UIKit
import Timer

final class AppDelegate: UIResponder {

    public var window: UIWindow?

    var appCoordinator: Coordinator?

}

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator()
        appCoordinator?.window = window
        appCoordinator?.start()
        return true
    }

}

