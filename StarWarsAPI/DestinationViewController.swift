import UIKit

// TODO change name

class DetailViewController: UIViewController {

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

extension DetailViewController: ServiceModelDelegate {
    
    func didReceiveDataFromService(data: Datasource) {
        self.characterSelection.delegate = self
        self.characterSelection.dataSource = self
        persons =  data.people
    }
}

extension DetailViewController: UIPickerViewDelegate {
 
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return  persons[row].characters
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      infoView?.configure(Person: persons[row])
  }

}

extension DetailViewController: UIPickerViewDataSource {
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return  persons.count
  }
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
}
