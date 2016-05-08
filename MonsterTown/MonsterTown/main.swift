//
//  main.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation
//declaring a variable and creating an instance of a town
var myTown = Town(region: "West",population: 10000, stopLights: 6)
myTown.printTownDesc()
var ts = myTown.townSize
print(ts)

//myTown.printTownDesc()
myTown.changePopulation(1000000)
print(myTown.townSize)
print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Zombie is Terrifying! Run Away!")
}

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDesc()

fredTheZombie?.changeName("Fred the Zombie", walksWithLimp: false)

var convenientZombie = Zombie(limp: true, fallinApart: false)

print("victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("victim pool: \(fredTheZombie?.victimPool)")

fredTheZombie = nil 