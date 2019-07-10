//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    //this should tell us if the airplane is running or not
    var running = false
    var author : String
    
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
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) {
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis"]
    }
}
