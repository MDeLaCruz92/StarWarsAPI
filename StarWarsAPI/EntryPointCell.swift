//
//  EntryPointCell.swift
//  StarWarsAPI
//
//  Created by lamour  on 4/20/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import Foundation
import UIKit

class EntryPointCell:UITableViewCell {
    
    var imgView:UIImageView?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    fileprivate func setup() {
        self.backgroundColor = .clear
        imgView = UIImageView(frame: self.frame)
        addSubview(imgView!)
        imgView?.isUserInteractionEnabled = true
        imgView?.contentMode = .center
        imgView?.translatesAutoresizingMaskIntoConstraints = false
        
        guard let leading = imgView?.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            let top = imgView?.topAnchor.constraint(equalTo: self.topAnchor),
            let trailling = imgView?.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            let bottom = imgView?.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
            else {fatalError()}
        
        NSLayoutConstraint.activate([leading,top,trailling,bottom])
        
    }
    
    func configure(img:UIImage?) {
        imgView?.image = img
    }
    
    
}

