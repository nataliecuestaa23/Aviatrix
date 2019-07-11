//
//  main.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

//Here I uncommented running, location, distance, fuel, and max fuel because I started collaberating them in to the code

func gauges(myPlane : Aviatrix) {
    print("Reading the gauges...")
    print(" ")
    print("| Running:  | ✅")
    print("| Location:  | \(myPlane.currentLocation)")
    print("| Distance:  | \(myPlane.distanceTraveled) miles")
    print("| Fuel:      | \(myPlane.fuelLevel) gallons")
    print("| Max Fuel:  | \(myPlane.maxFuel) gallons")
//    print("| MPG:       | \(myPlane.milesPerGallon)")
//    print("| Fuel Bill: | \(myPlane.fuelCost)")
}

//this function ask where you want to fly too
func fly(myPlane : Aviatrix) {
    
    print("Where would you like to fly to? ")
    print("")
    //calling the aviatrix class and using the Aviatrix function 
    let destinations = myPlane.knownDestinations()
    
    for (index, city) in destinations.enumerated() {
        let distance = myPlane.distanceTo(target: city, current: myPlane.currentLocation)
        print("\(index): \(city), \(distance) miles")
    }
    
    let response = Int(readLine()!)
    var desiredLocation = ""
    
    if response! >= 0 && response! < 4 {
        desiredLocation = myPlane.knownDestinations()[response!]
        
        print("🛫 Preparing for takeoff...")
        print("🛫 Flying...")
        
        if fuelCheck(myPlane: myPlane, destination : desiredLocation) {
            myPlane.flyTo(destination: desiredLocation)
            print("🛬 You've arrived in myPlane.currentLoaction!")
            gauges(myPlane: myPlane)
        }
    }
    else {
        print("⚠️Please enter a valid command⚠️")
    }
    
}

func refuel(myPlane : Aviatrix) {
    let refuelData = myPlane.refuel()
    let data = AviatrixData().fuelPrices
 //Here I added in all the current locations so people can determine their location.
    //make sure to check all minor details so it doesn't come out as a detail
    //changes NEED TO BE MADE HERE
    print("Refueling...")
    print("⛽ Here in \(myPlane.currentLocation), jet fuel costs $\(data[myPlane.currentLocation]!)")
    print("⛽ You refueled \(myPlane.refuel) gallons totaling $\(myPlane.fuelCost)")
}

func fuelCheck(myPlane : Aviatrix, destination : String) -> Bool {
//    let distanceToTravel =  Double(myPlane.distanceTo(target : destination))
//    if myPlane.fuelLevel < distanceToTravel {
//        print(" ")
//        print("🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥")
//        print("Oh no! You've run out of fuel and crashed on the way to \(myPlane.location)!")
//        print("🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥")
//
//        return false
//    } else {
//        return true
//    }
    return true
}

var plane = Aviatrix(myAuthor: "KWK Portland")

print("Welcome to the Aviatrix Flight System by \(plane.author)")
plane.start()

print("You're currently in \(plane.currentLocation)")

print("You're currently in _________")

var command = ""

while command != "q" {
    print(" ")
    print("What would you like to do?")
    print("a) 📊 check the plane gauges")
    print("b) 🛫 fly to a different city")
    print("c) ⛽ refuel")
    print("q) ❌ quit")
    print(" ")
    print("Action: ")
    command = readLine()!
    
    if command == "a" {
        gauges(myPlane: plane)
    }
    else if command == "b" {
        fly(myPlane: plane)
    }
    else if command == "c" {
        refuel(myPlane: plane)
    }
    else if command != "q" {
        print("⚠️Please enter a valid command⚠️")
    }
}


print(" ")
print("Thanks for flying with \(plane.author) airline!")

