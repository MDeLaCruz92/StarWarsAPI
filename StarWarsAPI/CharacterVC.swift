//
//  CharacterVC.swift
//  StarWarsAPI
//
//  Created by Michael De La Cruz on 3/27/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit
import SwiftyJSON
import TRON

// TODO change name
protocol SearchDelegate {
  func didUserSelectNewName<T>(Person:T)
}


class CharacterVC: UIViewController {

  @IBOutlet weak var characterSelection: UIPickerView!
  @IBOutlet weak var infoView:InfoView?
  @IBAction func cancelBarBtn(_ sender: UIBarButtonItem) {
     dismiss(animated: true, completion: nil)
    }
  var persons = [Person]()
  var serviceModel: ServiceModel?

  

  override func viewDidLoad() {
    super.viewDidLoad()
    serviceModel = ServiceModel()
    serviceModel?.delegate = self
    serviceModel?.startTask()
  }

  
}

extension CharacterVC: ServiceModelDelegate {
    
    func didReceiveDataFromService(data: Datasource) {
        
        self.characterSelection.delegate = self
        self.characterSelection.dataSource = self
        persons =  data.people
    }
}

extension CharacterVC: UIPickerViewDelegate {
 
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return  persons[row].characters
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      infoView?.configure(Person: persons[row])
  }
  
  
}

extension CharacterVC:UIPickerViewDataSource {
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return  persons.count
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
}
