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
    }
  
}
