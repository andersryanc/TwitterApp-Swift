//
//  UserFooter.swift
//  Twitter
//
//  Created by Ryan Anderson on 1/31/17.
//  Copyright © 2017 Ryan Anderson. All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel();
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitterBlue
        return label
    }()

    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: padding, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
