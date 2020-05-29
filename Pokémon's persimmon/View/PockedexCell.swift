//
//  PockedexCell.swift
//  Pokémon's persimmon
//
//  Created by 신동규 on 2020/05/29.
//  Copyright © 2020 Mac circle. All rights reserved.
//

import UIKit

class PockeDexCell:UICollectionViewCell {
    // MARK: - properties
    lazy var imageView:UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .tertiarySystemGroupedBackground
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    lazy var textView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.mainColor
        view.addSubview(self.label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        return view
    }()
    
    lazy var label:UILabel = {
        let label = UILabel()
        label.text = "donggyu mon"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helper functions
    func configureViewComponents(){
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true
        
        self.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive = true
        textView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        textView.rightAnchor.constraint(equalToSystemSpacingAfter: self.rightAnchor, multiplier: 0).isActive = true
        textView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
    }
}
