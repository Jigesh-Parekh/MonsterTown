//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation

class Zombie : Monster {
    var walksWithLimp = true
    //final prevents future subclasses from altering this zombie implementation - keeping it unique and untouched just for Zombie
    final override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
            // super calls the monsters class implementation of terrorize town as it was defined
            //inherits moster properties and ovverrides terrorizetown function meaning that s subclass is providing its own definition of a method
    }
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}