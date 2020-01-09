//
//  Copyright © 2019 fdzsergio. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the  License);
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an  AS IS BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit
import RxSwift

protocol TimerViewControllerRoutes: ViewControllerRoutes {}

public final class ViewController: UIViewController, TimerViewControllerRoutes {
    @IBOutlet var worktimeViewContainer: UIView!
    @IBOutlet var breaktimeViewContainer: UIView!
    @IBOutlet var timeViewContainer: UIView!
    @IBOutlet var buttonViewContainer: UIView!
    @IBOutlet var worktimeTextField: UITextField!
    @IBOutlet var breaktimeTextField: UITextField!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var actionButton: UIButton!
}
