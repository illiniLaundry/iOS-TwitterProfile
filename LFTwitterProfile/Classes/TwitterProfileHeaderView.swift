//
//  TwitterProfileHeaderView.swift
//  TwitterProfileViewController
//
//  Created by Roy Tang on 1/10/2016.
//  Copyright © 2016 NA. All rights reserved.
//

import Foundation
import UIKit

class TwitterProfileHeaderView: UIView {
    
  
    @IBOutlet weak var dormNameLabel: UILabel!
    
    @IBOutlet weak var favoritesButton: UIButton!
    
    @IBOutlet weak var availableLaundryMachinesLabel: UILabel!
    
    @IBOutlet weak var availableDryersLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        favoritesButton.addTarget(self, action: #selector(TwitterProfileHeaderView.clicked), for: .touchUpInside)
    }
    
    func clicked() {
        var favoritesData = UserDefaults.standard.stringArray(forKey: "favorites") ?? [String]()
        if(!favoritesData.contains(self.dormNameLabel.text!)) {
            addToFavorites()
        }
        else {
            removeFromFavorites()
        }
        
    }
    
    func addToFavorites() {
        var favoritesData = UserDefaults.standard.stringArray(forKey: "favorites") ?? [String]()
        if(!favoritesData.contains(self.dormNameLabel.text!)) {
            favoritesData.append(self.dormNameLabel.text!)
            UserDefaults.standard.set(favoritesData, forKey: "favorites")
            print ("added to favorites")
        }
        self.favoritesButton.setTitle("Remove from Favorites", for: .normal)
        
    }
    
    func removeFromFavorites() {
        var favoritesData = UserDefaults.standard.stringArray(forKey: "favorites") ?? [String]()
        if let index = favoritesData.index(of: self.dormNameLabel.text!) {
            favoritesData.remove(at: index)
            
            UserDefaults.standard.set(favoritesData, forKey: "favorites")
            
            print ("removed from favorites")
        }
        self.favoritesButton.setTitle("Add to Favorites", for: .normal)
    }
    
    
  
}
