//
//  Monster.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation

//Classes are like structs but are used to model related data under a common type

class Monster {
    //monster will be defined in very general terms since types of monsters will inhereit basic properties
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown(){
        if town != nil {
            print("\(name) is terroizing the town!")
        } else{
            print("\(name) has not found a town to terrorize yet")
        }
    }
}