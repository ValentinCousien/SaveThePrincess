//
//  Army.swift
//  Save The Princess
//
//  Created by Valentin COUSIEN on 23/08/2017.
//  Copyright © 2017 VCousien. All rights reserved.
//

import Foundation

class Army {
    
    static let shared = Army()
    
    private var array : Array<Soldier> = Array()
    
    private init() {}
    
    func appendSoldier(soldier : Soldier) {
        array.append(soldier)
    }
    
    func removeSoldiers() {
        
    }
}
