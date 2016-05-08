//
//  main.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation
//declaring a variable and creating an instance of a town
var myTown = Town()
var ts = myTown.townSize
print(ts)

//myTown.printTownDesc()
myTown.changePopulation(1000000)
print(myTown.townSize)
print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Zombie is Terrifying! Run Away!")
}

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDesc()

fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

print("victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("victim pool: \(fredTheZombie.victimPool)")
