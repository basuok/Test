//
//  CodedTableViewCell.swift
//  testingggg
//
//  Created by Bassel Isshaq on 09.03.2023.
//

import UIKit

class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"
    
    private let myLable: UILabel = {
        let lable = UILabel()
        return lable
        
    }()
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
        
    }()

    public func configure(){
        contentView.backgroundColor = .gray
        contentView.addSubview(myLable)
        contentView.addSubview(myImageView)
        myLable.text = "It Works"
        myLable.textAlignment = .center
        myImageView.image = UIImage(named: "image1")
        myImageView.contentMode = .scaleAspectFill
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        myLable.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width-105, height: 100)
        
        myImageView.layer.cornerRadius = 50.0

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
