//
//  borderLabel.swift
//  capstoneProject
//
//  Created by GWC on 7/18/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit

class borderLabel: UILabel {
    
    override func awakeFromNib() {
        
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
    }
     
}
