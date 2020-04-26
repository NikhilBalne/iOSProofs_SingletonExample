//
//  SecondViewController.swift
//  iOSProofs_SingletonExample
//
//  Created by Nikhil Balne on 26/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOutButtonTapped(_ sender: Any) {
        UserManager.sharedUser.userName = ""
        UserManager.sharedUser.userPhone = 0
        self.navigationController?.popViewController(animated: true)
    }
}
