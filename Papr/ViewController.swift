//
//  ViewController.swift
//  Papr
//
//  Created by Joan Disho on 30.10.17.
//  Copyright © 2017 Joan Disho. All rights reserved.
//

import UIKit
import Appcues

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)

      Appcues.shared.sendActivities()
    }
    
}

