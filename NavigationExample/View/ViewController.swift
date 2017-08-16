//
//  ViewController.swift
//  NavigationExample
//
//  Created by Thach Nguyen on 8/16/17.
//  Copyright © 2017 Thach Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OnMosterChangeProtocol {
    
    func doUpdateValue(value: String) {
        textInputName.text = value
    }
    
    @IBOutlet weak var textInputName: UITextField!
    
    @IBAction func onButtonClick(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mosterController = storyBoard.instantiateViewController(withIdentifier: "mosterController") as! MosterController
        mosterController.mosterProtocol = self
        mosterController.mosterName = textInputName.text
        self.navigationController?.pushViewController(mosterController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

