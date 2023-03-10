//
//  ImgeTableViewCell.swift
//  testingggg
//
//  Created by Bassel Isshaq on 09.03.2023.
//

import UIKit

class ImgeTableViewCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    
    static let identifire = "ImgeTableViewCell"
    
    static func nib()  -> UINib{
        return UINib(nibName: "ImgeTableViewCell", bundle: nil)
    }
    
    public func configure(with imageName : String){
        myImageView.image = UIImage(named: imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
