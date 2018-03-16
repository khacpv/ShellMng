//
//  Preferences.swift
//  ShellMng
//
//  Created by pham khac on 3/16/18.
//  Copyright © 2018 pham khac. All rights reserved.
//

import Foundation
struct Preferences {
    
    // 1
    var selectedTime: TimeInterval {
        get {
            // 2
            let savedTime = UserDefaults.standard.double(forKey: "selectedTime")
            if savedTime > 0 {
                return savedTime
            }
            // 3
            return 360
        }
        set {
            // 4
            UserDefaults.standard.set(newValue, forKey: "selectedTime")
        }
    }
    
}
