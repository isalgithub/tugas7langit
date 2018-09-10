//
//  ContactTableViewCell.swift
//  7langit
//
//  Created by Faishal Alif on 9/8/18.
//  Copyright © 2018 Faishal Alif. All rights reserved.
//

import UIKit


class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var fullname: UILabel!
    @IBOutlet weak var favoriteBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImg.roundedImage()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension UIImageView {
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}
