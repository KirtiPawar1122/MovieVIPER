//
//  MovieTableViewCell.swift
//  DemoVIPER
//
//  Created by Mayur Kamthe on 03/05/20.
//  Copyright © 2020 Mayur Kamthe. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblMovieName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
