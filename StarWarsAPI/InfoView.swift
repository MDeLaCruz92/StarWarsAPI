//
//  InfoView.swift
//  StarWarsAPI
//
//  Created by lamour  on 4/20/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit

class InfoView: UIView {
    @IBOutlet private weak var view:UIView?
    
    @IBOutlet private weak var bornLabel: UILabel?
    @IBOutlet private weak var homeLabel: UILabel?
    @IBOutlet private weak var heightLabel: UILabel?
    @IBOutlet private weak var eyesLabel: UILabel?
    @IBOutlet private weak var hairLabel: UILabel?
//    @IBOutlet weak var nameLabel: UILabel?
//    @IBOutlet weak var smallestNameLabel: UILabel?
//    @IBOutlet weak var largestNameLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        view = UINib(nibName: "InfoView", bundle: Bundle.main).instantiate(withOwner: self, options: nil).first as? UIView
        addSubview(view!)
    }
    
    func configure(Person:Person) {
        
        bornLabel?.text = Person.birth
        heightLabel?.text = Person.height
        homeLabel?.text = Person.home
        eyesLabel?.text = Person.eyes
        hairLabel?.text = Person.hair
    }
    
}
