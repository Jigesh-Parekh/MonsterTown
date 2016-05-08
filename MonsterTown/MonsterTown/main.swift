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

//myTown.printTownDesc()
myTown.changePopulation(500)

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDesc()

fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)
