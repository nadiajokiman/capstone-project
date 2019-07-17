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
    
    
    
    var  numberOfGems = 0
    var workQuestionsCompleted = 0
    var schoolQuestionsCompleted = 0
    var funQuestionsCompleted = 0
    
    
    
    @IBOutlet weak var gemText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func setWorkQuestion(){
            gemText.text = "\(numberOfGems)"
        }
        
        func completedWorkEpisode() {
            if workQuestionsCompleted >= 3 {
                numberOfGems += 1
            }
            workQuestionsCompleted = 0
        }
        
        func completedSchoolEpisode() {
            if schoolQuestionsCompleted >= 3 {
                numberOfGems += 1
            }
            schoolQuestionsCompleted = 0
        }
        
        func completedFunEpisode() {
            if funQuestionsCompleted >= 3 {
                numberOfGems += 1
            }
            funQuestionsCompleted = 0
        }
        
    }
    
}
