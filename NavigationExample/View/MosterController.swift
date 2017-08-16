//
//  MosterController.swift
//  NavigationExample
//
//  Created by Thach Nguyen on 8/16/17.
//  Copyright © 2017 Thach Nguyen. All rights reserved.
//

import Foundation
import UIKit

class MosterController: UIViewController {
    
    var mosterProtocol: OnMosterChangeProtocol?
    
    var mosterName: String?
    
    @IBOutlet weak var inputMosterName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputMosterName.text = mosterName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if (mosterProtocol != nil) {
            let name = inputMosterName.text
            mosterProtocol?.doUpdateValue(value: name!)
        }
    }
    
}

