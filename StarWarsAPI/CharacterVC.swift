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
    
//  @IBOutlet weak var bornLabel: UILabel!
//  @IBOutlet weak var homeLabel: UILabel!
//  @IBOutlet weak var heightLabel: UILabel!
//  @IBOutlet weak var eyesLabel: UILabel!
//  @IBOutlet weak var hairLabel: UILabel!
//  @IBOutlet weak var nameLabel: UILabel!
//  @IBOutlet weak var smallestNameLabel: UILabel!
//  @IBOutlet weak var largestNameLabel: UILabel!
  
  var pickerData = [String]()
  let person = [Person]()
    

  @IBAction func cancelBarBtn(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
  }
  
    var serviceModel:ServiceModel?
    var localDataSource: Datasource!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    serviceModel = ServiceModel()
    serviceModel?.delegate = self
    serviceModel?.startTask()
 
    
    self.characterSelection.delegate = self
    self.characterSelection.dataSource = self

    pickerData = ["1", "2", "3", "4", "5"]
  }

  
}

extension CharacterVC: ServiceModelDelegate {
    
    func didReceiveDataFromService(data: Datasource) {
        //print(data.people.first)
        localDataSource = data
        guard let first = data.people.first  else {  fatalError() }
        infoView?.configure(Person: first)
    }
}

extension CharacterVC: UIPickerViewDelegate {
 
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerData[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      var selectedData = pickerData[row]
      //infoView?.configure(Person: selectedData.)
    
  }
  
  
}

extension CharacterVC:UIPickerViewDataSource {
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerData.count
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
}
