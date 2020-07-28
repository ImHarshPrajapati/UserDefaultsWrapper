//
//  HPUserDefaults.swift
//
//  Created by harshadp_MS021 on 27/07/20.
//  Copyright © 2020 com.HP. All rights reserved.
//



import Foundation

class HPUserDefaults: NSObject {
    
    static let shared = HPUserDefaults()
    
    //Bool
    var isDefault: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "isDefault")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "isDefault")
        }
    }
    
    //String
    var nickName: String {
       get {
           return UserDefaults.standard.string(forKey: "nickName") ?? ""
       }
       set {
           UserDefaults.standard.set(newValue, forKey: "nickName")
       }
    }
}
