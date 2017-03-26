//
//  Entities.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/26/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit

class Person {
  let characters: String
  let age: Int
  let height: Double
  let eyes: String
  let hair: String
  
  
  init(characters: String, age: Int, height: Double, eyes: String, hair: String) {
    self.characters = characters
    self.age = age
    self.height = height
    self.eyes = eyes
    self.hair = hair
  }
}

class Vehicles {
  let make: String
  let cost: Int
  let length: Double
  let type: String
  let crew: Int
  
  init(make: String, cost: Int, length: Double, type: String, crew: Int) {
    self.make = make
    self.cost = cost
    self.length = length
    self.type = type
    self.crew = crew
  }
}

class Starships: Vehicles {
  
}
