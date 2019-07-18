//
//  borderLabel.swift
//  capstoneProject
//
//  Created by GWC on 7/18/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit

class borderLabel: UILabel {
    
    override func viewDidLoad() {
    UIView.layer.borderWidth = 2.0
    UIView.layer.borderColor = UIColor.blackColor().CGColor
}
}
