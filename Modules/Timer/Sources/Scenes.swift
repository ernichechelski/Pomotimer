//
//  Scenes.swift
//  PomotimerLibTests
//
//  Created by Ernest Chechelski on 09/01/2020.
//

import UIKit
enum Scenes {
    enum Storyboards {
        static let main = UIStoryboard(name: "Main", bundle: nil)
    }

    enum Routes {
        static var timer: TimerViewControllerRoutes {
            let vc = ViewController()
            vc.awakeFromNib()
            return vc
        }
    }
}
