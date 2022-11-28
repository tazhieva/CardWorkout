//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic
//
//  Created by Акмарал Тажиева on 22.06.2022.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView   = UIImageView()
    let stopButton      = CWButton(color: .systemRed, title: "Stop!", systemImageName: "stop.circle")
    let restartButton   = CWButton(color: .systemGreen, title: "Restart", systemImageName: "arrow.clockwise.circle")
    let rulesButton     = CWButton(color: .systemBlue, title: "Rules", systemImageName: "list.bullet")
    

    var timer: Timer!
    
    var cards: [UIImage] = Card.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        startTimer()
        view.backgroundColor = .systemBackground
        
    }
    
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    @objc func showRandomImage(){
        cardImageView.image =  cards.randomElement() ?? UIImage(named: "black_joker")
    }
    
    
    func configureUI(){
        configureCardImageVeiw()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
        
    }
    func cardImageChange(){
        
    }
    
    func configureCardImageVeiw(){
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "black_joker")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
        
        
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        
        stopButton.addTarget(self, action: #selector(stopButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    @objc func stopButtonTapped(){
        timer.invalidate()
    }
    
    func configureRestartButton(){
        view.addSubview(restartButton)
        
        restartButton.addTarget(self, action: #selector(restartButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 120),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        
        ])
    }
    @objc func restartButtonTapped(){
            timer.invalidate()
            startTimer()
        
    }
    
    
    func configureRulesButton(){
        view.addSubview(rulesButton)
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 120),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    
    @objc func presentRulesVC(){
         present(RulesVC(), animated: true)
         
     }
   

    
    

}
