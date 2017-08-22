//
//  Door.swift
//  Save The Princess
//
//  Created by Valentin COUSIEN on 22/08/2017.
//  Copyright © 2017 VCousien. All rights reserved.
//

import Foundation

class Door { // 🚪
    
    static let shared = Door()
    
    var durability : Int = 100
    
    private init() {}
    
    func hittenFor(damage : Int) {
        
        NotificationCenter.default.post(name : Notification.Name("DurabilityDidChange"), object : nil)
        durability -= damage
    }
    
    func isBroken() -> Bool {
        
        return durability < 0 ? true : false
    }
    
    func getDurability() -> Int {
     
        return durability
    }
    
}
