//
//  ResultsViewController.swift
//  QuizAppSwift
//
//  Created by Leandro Roberto Medeiros on 18/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var score: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas Corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas Incorretas: \(totalAnswers - totalCorrectAnswers)"
        
        let fieldScore = totalCorrectAnswers * 100 / totalAnswers
        score.text = "\(fieldScore)%"
        
    }
    

    @IBAction func Close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
