//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var currentLocation = "St.Louis"
    
    //this should tell us if the airplane is running or not
    var running = false
    var author : String
    var distanceTraveled = 0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var fuelCost = 500

    return gallonsNeeded
    
        //saying who created this plane and airline
        init(myAuthor: String){
            author = myAuthor
        }
        
 
        
        //starts the airplane so it means it's running
        func start() -> Bool { //Bool stands for Boolean which means true or false
            running = true
            return running
        }
    
    
    func refuel() {
    let gallonsNeeded = Double(maxFuel)
    let data = AviatrixData
    fuelCost += gallonsNeeded * data.fuelPrices[currentLocation]!
    fuelLevel = 5000.0
        
    return gallonsNeeded
    
    }
    
    func flyTo(destination : String) {
    currentLocation = destination
    }
    //I want to tell every plane that I create from this class how far please are
    func distanceTo(target : String, current: String) -> Int {
        //I need to get information from the AviatrixData file
    //I want to tell every plane that I create from the Aviatrix class where they can fly
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
    //Swift uses ! to mean not, but it also uses it to say I know there is definitely
    }
    
    
    func knownDestinations() -> [String] {
     //change this function so I return all the options for destinations
        //I need to get information from the Aviatrix.swift file
        let data = AviatrixData()
        //I called the AviatrixData class
        return Array(data.knownDistances.keys)
        //so I stored all of the keys to destinations in a Array
    }
    
}

