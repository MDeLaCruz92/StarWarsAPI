//
//  Starships.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/27/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import Foundation
import SwiftyJSON
import TRON

struct Starships: JSONDecodable {
  let make: String
  let cost: String
  let length: String
  let type: String
  let crew: String
  
  init(json: JSON) {
    self.make = json["manufacturer"].stringValue
    self.cost = json["cost_in_credits"].stringValue
    self.length = json["length"].stringValue
    self.type = json["starship_class"].stringValue
    self.crew = json["crew"].stringValue
  }
}
