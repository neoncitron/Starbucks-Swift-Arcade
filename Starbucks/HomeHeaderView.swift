//
//  HomeHeaderView.swift
//  Starbucks
//
//  Created by Riccie on 10.08.2020.
//  Copyright © 2020 Riccie. All rights reserved.
//

import UIKit

class HomeHeaderView: UIView {
    let greeting = UILabel()
    let inboxButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension HomeHeaderView {
    func style() {
        greeting.translatesAutoresizingMaskIntoConstraints = false
        greeting.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        greeting.text = "Good afternoon, Karina!"
        greeting.numberOfLines = 0
        greeting.lineBreakMode = .byWordWrapping
        
        makeInboxButton()
    }
    
    func layout() {
        addSubview(greeting)
        addSubview(inboxButton)
        
        NSLayoutConstraint.activate([
            greeting.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            greeting.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: greeting.trailingAnchor, multiplier: 1),
        
            inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greeting.bottomAnchor, multiplier: 2),
            inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1),
            inboxButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25)
        ])
    }
}

// MARK: Factories
extension HomeHeaderView {
    func makeInboxButton() {
        inboxButton.translatesAutoresizingMaskIntoConstraints = false
        let configutation = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: "envelope", withConfiguration: configutation)
        
        inboxButton.setImage(image, for: .normal)
        inboxButton.imageView?.tintColor = .secondaryLabel
        inboxButton.imageView?.contentMode = .scaleAspectFit
        
        inboxButton.setTitle("Inbox", for: .normal)
        inboxButton.setTitleColor(.secondaryLabel, for: .normal)
        
        inboxButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        inboxButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
    }
}
