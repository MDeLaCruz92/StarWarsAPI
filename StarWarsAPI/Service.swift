//
//  Service.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/27/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
  
  init() {}
  
  let tron = TRON(baseURL: "https://swapi.co/")
  
 // static let sharedInstance = Service()
  
  func fetchPersonEntity(completion: @escaping (Datasource?, Error?) -> ()) {
    print("Fetching The Characters' Entity")
    
    let request: APIRequest<Datasource, JSONError> = tron.request("/api/people/")
    
    request.perform(withSuccess: { (datasource) in
      print("Successfully fetched our json objects")
      completion(datasource, nil)
    }) { (err) in
      
      completion(nil, err)
    }
  }
  
  class JSONError: JSONDecodable {
    required init(json: JSON) throws{
      print("JSON ERROR")
    }
  }
  
}
