//
//  EntryModel.swift
//  StarWarsAPI
//
//  Created by lamour  on 4/20/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import Foundation
import UIKit

struct EntryItem {
    var img:UIImage
    var title:String
}

enum Type {
    case characters
    case starships
    case vehicles
}

class EntryModel {
    
    init() {}
    
    func start()->[EntryItem] {
        return [
            EntryItem(img: UIImage(named:"icon-characters.png")!, title: String(describing:Type.characters)),
            EntryItem(img: UIImage(named:"icon-starships.png")!, title: String(describing:Type.starships)),
            EntryItem(img: UIImage(named:"icon-vehicles.png")!, title: String(describing:Type.vehicles))
        ]
        
    }
    
}
