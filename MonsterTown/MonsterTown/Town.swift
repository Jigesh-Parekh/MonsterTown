//
//  Town.swift
//  MonsterTown
//
//  Created by Jigesh Parekh on 5/8/16.
//  Copyright © 2016 Jigesh Parekh. All rights reserved.
//

import Foundation

struct Town {
    let region:  String
    var population = 5422 {
        didSet(oldPopulation) {
            print("the poplation has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStopLights: Int
    
    init(region: String, population: Int, stopLights: Int) {
        self.region = region
        self.population = population
        numberOfStopLights = stopLights
    }
    init(population: Int, stopLights: Int){
        self.init(region: "N/A", population: population, stopLights: stopLights)
    }
    
    
    enum Size{
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                    return Size.Small
            case 10001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }
    
            //Let Town Describe itself
    func printTownDesc(){
        print("Population: \(self.population), number of stopLights: \(self.numberOfStopLights); region: \(region)")
    }
            //create a function that Changes the towns information! if an instance method on a struct changes any of the structs properties it must be marked as mutating
            //increase the towns instances popilation
    mutating func changePopulation(amount: Int){
        self.population += amount
    }
}

            //tthese properties are mitable because towns pop and num of stoplights are likley to change over time create an instance of Town in the main.swift file

            //Let Town Describe itself

