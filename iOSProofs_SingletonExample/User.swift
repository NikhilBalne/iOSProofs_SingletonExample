//
//  User.swift
//  iOSProofs_SingletonExample
//
//  Created by Nikhil Balne on 26/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import Foundation

class UserManager {
    
    static var sharedUser : UserManager = UserManager()
    
    var userName : String = ""
    var userPhone : Int = 0
    
    private init() {}
    
}
