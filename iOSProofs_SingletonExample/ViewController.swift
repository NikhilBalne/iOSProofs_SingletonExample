//
//  ViewController.swift
//  iOSProofs_SingletonExample
//
//  Created by Nikhil Balne on 26/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newUser = UserManager.sharedUser
        newUser.userName = "Nikhil"
        newUser.userPhone = 9059139019
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print("NameOfTheUser:\(appDelegate.nameOfTheUser)")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("UserName:\(UserManager.sharedUser.userName)")
        print("UserPhone:\(UserManager.sharedUser.userPhone)")
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}

