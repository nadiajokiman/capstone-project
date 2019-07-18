//
//  ResultsController.swift
//  capstoneProject
//
//  Created by GWC on 7/16/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit

class ResultsController: UIViewController
{
    
    var episodeCompleted: String?
    var numberOfGems: Int?
    
    
    @IBOutlet weak var gemText: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setGem()
        setResults()
    }
    func setGem()
    {
        if(episodeCompleted=="work" || episodeCompleted=="school" || episodeCompleted=="fun")
        {
            numberOfGems = numberOfGems+1
        }
        gemText.text = "\(numberOfGems)"
    }
    func setResults()
    {
        if(episodeCompleted=="work")
        {
            
        }
        else if(episodeCompleted=="school")
        {
            
        }
        else
        {
            
        }
    }
    
}
