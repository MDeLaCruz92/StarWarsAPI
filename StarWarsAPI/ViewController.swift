//
//  ViewController.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/26/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit
import TRON
import SwiftyJSON

class ViewController: UIViewController {
  
  let errorMessageLabel: UILabel = {
    let label = UILabel()
    label.text = "Apologies something went wrong. Please try again later..."
    label.textAlignment = .center
    label.numberOfLines = 0
    label.isHidden = true
    return label
  }()
  
  var serviceModel:ServiceModel?
  
  override func viewDidLoad() {
    super.viewDidLoad()
         serviceModel = ServiceModel()
         serviceModel?.delegate = self
         serviceModel?.startTask()
      }
  

}

/*
 if let err = err {
 self.errorMessageLabel.isHidden = false
 
 if let apiError = err as? APIError<Service.JSONError> {
 if apiError.response?.statusCode != 200 {
 self.errorMessageLabel.text = "Status code was not 200"
 }
 }
 return
 }

 */

extension ViewController:ServiceModelDelegate {

  func didReceiveDataFromService(data: Datasource) {
      print(data.people.first)
  }
}
