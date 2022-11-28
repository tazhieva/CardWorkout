//
//  RulesVC.swift
//  CardWorkout-Programmatic
//
//  Created by Акмарал Тажиева on 22.06.2022.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel      = UILabel()
    let rulesLabel      = UILabel()
    let exerciseLabel   = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLeabel()
        configureExerciseLabel()

    }
    func configureTitleLabel(){
        
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
           
        
        ])
        
    }
    
    func configureRulesLeabel(){
        
        view.addSubview(rulesLabel)
        
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n \n J = 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciseLabel(){
        
        view.addSubview(exerciseLabel)
        
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♦️ = Push-up \n\n ♣️ = Jumping Jacks \n\n ❤️ = Sit-up \n\n ♠️ = Pressing down "
        exerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        exerciseLabel.textAlignment = .left
        exerciseLabel.lineBreakMode = .byTruncatingMiddle
        exerciseLabel.numberOfLines = 0
       
 
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 30),
//            exerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
//            exerciseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
    
        

}
