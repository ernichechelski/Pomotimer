//
//  ViewRoutes.swift
//  PomotimerLibTests
//
//  Created by Ernest Chechelski on 09/01/2020.
//

import Foundation

import UIKit

protocol ViewControllerRoutes {
    var viewController: UIViewController { get }
}

extension ViewControllerRoutes where Self: UIViewController {
    var viewController: UIViewController { self }
}
