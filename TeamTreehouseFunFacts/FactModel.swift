//
//  FactModel.swift
//  TeamTreehouseFunFacts
//
//  Created by Kevin Kirsche on 9/15/16.
//  Copyright © 2016 Kevin Kirsche. All rights reserved.
//

import GameKit

struct FactModel {
    let facts = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built." ]
    var position = 0
    
    func getFact() -> String {
        return self.facts[self.position]
    }
    
    func getRandomFact() -> String {
        return self.facts[GKRandomSource.sharedRandom().nextIntWithUpperBound(self.facts.count)]
    }
    
    mutating func nextFact() -> String {
        self.position += 1
        if self.position > (self.facts.count - 1) {
            self.position = 0
        }
        
        return self.getFact()
    }
}