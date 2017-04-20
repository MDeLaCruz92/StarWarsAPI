//
//  Datasource.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/27/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit
import SwiftyJSON
import TRON

extension Collection where Iterator.Element == JSON {
  func decode<T: JSONDecodable>() throws -> [T] {
    return try map{try T(json: $0)}
  }
}

class Datasource: JSONDecodable {
  
  let people: [Person]
  let vehicle: [Vehicles]
  let starship: [Starships]
  
  required init(json: JSON) throws {
    guard let characterJsonArray = json["results"].array,
      let vehicleJsonArray = json["results"].array,
      let starshipJsonArray = json["results"].array
      else { throw NSError(domain: "MichaelD.StarWarsAPI", code: 1, userInfo: [NSLocalizedDescriptionKey: "Parsing JSON was not valid."])
    }
    
    self.people = try characterJsonArray.decode()
    self.vehicle = try vehicleJsonArray.decode()
    self.starship = try starshipJsonArray.decode()
  }

  
}
