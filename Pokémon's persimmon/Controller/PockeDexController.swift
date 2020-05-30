//
//  PockeDexController.swift
//  Pokémon's persimmon
//
//  Created by 신동규 on 2020/05/28.
//  Copyright © 2020 Mac circle. All rights reserved.
//

import UIKit

let reuseableIdentifier = "pockeDex"

class PockeDexController:UICollectionViewController {
    // MARK: - properties
    let pokemonService = PokemonService()
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureViewComponents()
        fetchPokemons()
        
    }
    
    // MARK: - Mode changed
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        changeColorWhenModeChanged()
    }
    
    
    func changeColorWhenModeChanged(){
        if self.traitCollection.userInterfaceStyle == .dark {
            // 다크모드일때
            navigationController?.navigationBar.tintColor = .white
        }else {
            // 라이트모드일때
            navigationController?.navigationBar.tintColor = .black
        }
    }
    
    // MARK: - Selectors
    @objc func showSearchBar(){
        
    }
    
    // MARK: - Helper functions
    
    func fetchPokemons(){
        pokemonService.fetchPokemons()
    }
    
    func configureViewComponents(){
        collectionView.backgroundColor = .systemBackground
        navigationController?.navigationBar.barTintColor = UIColor.mainColor
        navigationController?.navigationBar.isTranslucent = false 
        
        self.title = "Pokémon's persimmon"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.search, target: self, action: #selector(showSearchBar))
        
        collectionView.register(PockeDexCell.self, forCellWithReuseIdentifier: reuseableIdentifier)
        
        changeColorWhenModeChanged()
        
    }
}

extension PockeDexController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseableIdentifier, for: indexPath)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
}


extension PockeDexController:UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 32, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 36) / 3
        let size = CGSize(width: width, height: width)
        return size
    }
}
