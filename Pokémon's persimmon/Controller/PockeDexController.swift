//
//  PockeDexController.swift
//  Pokémon's persimmon
//
//  Created by 신동규 on 2020/05/28.
//  Copyright © 2020 Mac circle. All rights reserved.
//

import UIKit

class PockeDexController:UICollectionViewController {
    // MARK: - properties
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureViewComponents()
        
        
    }
    
    // MARK: - Helper functions
    func configureViewComponents(){
        collectionView.backgroundColor = .systemBackground
    }
}
