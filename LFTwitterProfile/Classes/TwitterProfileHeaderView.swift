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
    
    var dorm_name_untruncated: String = ""
    
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
        if(!favoritesData.contains(self.dorm_name_untruncated)) {
            addToFavorites()
        }
        else {
            removeFromFavorites()
        }
        
    }
    
    func addToFavorites() {
        var favoritesData = UserDefaults.standard.stringArray(forKey: "favorites") ?? [String]()
        if(!favoritesData.contains(self.dorm_name_untruncated)) {
            favoritesData.append(self.dorm_name_untruncated)
            UserDefaults.standard.set(favoritesData, forKey: "favorites")
            print ("added to favorites")
        }
        self.favoritesButton.setTitle("Remove from Favorites", for: .normal)
        
    }
    
    func removeFromFavorites() {
        var favoritesData = UserDefaults.standard.stringArray(forKey: "favorites") ?? [String]()
        if let index = favoritesData.index(of: self.dorm_name_untruncated) {
            favoritesData.remove(at: index)
            
            UserDefaults.standard.set(favoritesData, forKey: "favorites")
            
            print ("removed from favorites")
        }
        self.favoritesButton.setTitle("Add to Favorites", for: .normal)
    }
    
    
  
}
