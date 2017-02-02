//
//  TweetCell.swift
//  Twitter
//
//  Created by Ryan Anderson on 2/1/17.
//  Copyright © 2017 Ryan Anderson. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "ryan-1")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()

    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = separatorColor
        
        addSubview(profileImageView)

        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: padding, leftConstant: padding, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
    }
    
}
