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


class InfoView: UIView {

  @IBOutlet weak var bornLabel: UILabel?
  @IBOutlet weak var homeLabel: UILabel?
  @IBOutlet weak var heightLabel: UILabel?
  @IBOutlet weak var eyesLabel: UILabel?
  @IBOutlet weak var hairLabel: UILabel?
  @IBOutlet weak var nameLabel: UILabel?
  @IBOutlet weak var smallestNameLabel: UILabel?
  @IBOutlet weak var largestNameLabel: UILabel?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  func configure(Person:Person) {
    bornLabel?.text = Person.birth
    heightLabel?.text = Person.height
    eyesLabel?.text = 
  }

}


class CharacterVC: UIViewController {

  @IBOutlet weak var characterSelection: UIPickerView!
  
  @IBOutlet weak var bornLabel: UILabel!
  @IBOutlet weak var homeLabel: UILabel!
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var eyesLabel: UILabel!
  @IBOutlet weak var hairLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var smallestNameLabel: UILabel!
  @IBOutlet weak var largestNameLabel: UILabel!
  
  var pickerData = [String]()
  let person = [Person]()

  @IBAction func cancelBarBtn(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.characterSelection.delegate = self
    self.characterSelection.dataSource = self

    pickerData = ["1", "2", "3", "4", "5"]
    parseLabels()
  }
  
  func parseLabels() {
    
  }
  
}

extension CharacterVC: UIPickerViewDelegate {
 
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerData[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      var selectedData = pickerData[row]
    
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
