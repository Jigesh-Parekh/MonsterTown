//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation

class Zombie : Monster {
    var walksWithLimp: Bool
    //final prevents future subclasses from altering this zombie implementation - keeping it unique and untouched just for Zombie
    private(set) var isFallingApart: Bool
    
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String){
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallinApart: Bool) {
        self.init(limp: limp, fallingApart: fallinApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This Zombie has a bad knee")
        }
    }
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    final override func terrorizeTown() {
        if !isFallingApart{
            town?.changePopulation(-10)
        }
        super.terrorizeTown()
            // super calls the monsters class implementation of terrorize town as it was defined
            //inherits moster properties and ovverrides terrorizetown function meaning that s subclass is providing its own definition of a method
    }
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
    
    deinit{
        print("Zombie name \(name) is no longer with us")
    }
    
    override class var spookyNoise: String {
        return "Brains..."
    }
}