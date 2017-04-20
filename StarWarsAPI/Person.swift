//
//  Person.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/27/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import Foundation
import SwiftyJSON
import TRON

struct Person: JSONDecodable {
  let characters: String
  let birth: String
  let height: String
  let eyes: String
  let hair: String
  let home:String
  
  init(json: JSON) {
    self.characters = json["name"].stringValue
    self.birth = json["birth_year"].stringValue
    self.height = json["height"].stringValue
    self.eyes = json["eye_color"].stringValue
    self.hair = json["hair_color"].stringValue
    self.home = json["homeworld"].stringValue
  }
}
