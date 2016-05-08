//
//  Town.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStopLights = 4
//Let Town Describe itself
    func printTownDesc(){
        print("Population: \(self.population), number of stopLights: \(self.numberOfStopLights)")
    }
    //create a function that Changes the towns information! if an instance method on a struct changes any of the structs properties it must be marked as mutating
    //increase the towns instances popilation
    mutating func changePopulation(amount: Int){
        population += amount
    }
}

//tthese properties are mitable because towns pop and num of stoplights are likley to change over time create an instance of Town in the main.swift file 

//Let Town Describe itself

