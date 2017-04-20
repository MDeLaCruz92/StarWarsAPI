//
//  ViewController.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/26/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
  let errorMessageLabel: UILabel = {
    let label = UILabel()
    label.text = "Apologies something went wrong. Please try again later..."
    label.textAlignment = .center
    label.numberOfLines = 0
    label.isHidden = true
    return label
  }()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
      }
  

}
