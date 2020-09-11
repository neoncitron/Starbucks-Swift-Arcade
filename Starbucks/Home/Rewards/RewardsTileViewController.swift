//
//  RewardsTileViewController.swift
//  Starbucks
//
//  Created by Riccie on 07.09.2020.
//  Copyright © 2020 Riccie. All rights reserved.
//

import UIKit

class RewardsTileViewController: UIViewController {
    
    let rewardsTileView = RewardsTileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rewardsTileView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(rewardsTileView)
        
        NSLayoutConstraint.activate([
            rewardsTileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rewardsTileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rewardsTileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rewardsTileView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
    
}

