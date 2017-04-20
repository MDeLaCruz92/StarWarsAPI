import Foundation

protocol ServiceModelDelegate: class {
  func didReceiveDataFromService(data:Datasource)
}

class ServiceModel {
  private var service:Service?
  weak var delegate:ServiceModelDelegate?
  
  init() {
    service = Service()
  }
  
   func startTask() {
    service?.fetchPersonEntity { [weak self] (datasource, err) in
      if (err == nil) {
        guard let data = datasource else { fatalError() }
        self?.delegate?.didReceiveDataFromService(data: data)
      }
    }
  }
}
