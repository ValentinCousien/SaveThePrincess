//
//  Soldier.swift
//  Save The Princess
//
//  Created by Valentin COUSIEN on 22/08/2017.
//  Copyright © 2017 VCousien. All rights reserved.
//

import Foundation

class Soldier { // 🤺
    
    var name : String = ""
    var color : String = ""
    var gender : Gender = .OTHER
    var age : Int = 1
    
    init(name : String, color : String, gender : Gender, age : Int) {
        
        self.name = name
        self.color = color
        self.gender = gender
        self.age = age
    }
    
    func attack() {
        
        Door.shared.hittenFor(damage: age * 1)
        print("BANZAI")
    }
    
    func die() {
        
        print("at least, I die as a hero... fucking door... humpf *collapse*")
    }
}
