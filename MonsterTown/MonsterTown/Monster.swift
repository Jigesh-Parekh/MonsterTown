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
    static let isTerrifying = true
    
    class var spookyNoise: String {
        return "Grr"
    }
    
    //monster will be defined in very general terms since types of monsters will inhereit basic properties
    var town: Town?
    var name: String
    
    var victimPool: Int {
        get {
                //using the nil coalescing operator to check wheather the monster instance has a town that it is currently terrorizinf - returns the population, if the instance has not found a town it simply returns 0
            return town?.population ?? 0
        }
        set(newVictimPool){
             town?.population = newVictimPool
        }
    }
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    
    func terrorizeTown(){
        if town != nil {
            print("\(name) is terroizing the town!")
        } else{
            print("\(name) has not found a town to terrorize yet")
        }
    }
}