//
//  AppCoordinator.swift
//  PomotimerLibTests
//
//  Created by Ernest Chechelski on 09/01/2020.
//

import UIKit



public protocol Coordinator {
    var window: UIWindow? { get set }
    func start()
}

public final class AppCoordinator: Coordinator {

    public var window: UIWindow?

    public init(){}

    public func start() {
        window?.rootViewController = Scenes.Routes.timer.viewController
        window?.makeKeyAndVisible()
    }
}
