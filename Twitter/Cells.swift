//
//  Cells.swift
//  Twitter
//
//  Created by Ryan Anderson on 1/31/17.
//  Copyright © 2017 Ryan Anderson. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .blue
    }
    
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        label.text = "Full Name"
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple
        label.text = "@username"
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .purple
        textView.text = "I really like to go to the movies and eat pizza!!"
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .cyan
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        let padding: CGFloat = 12

        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: padding, leftConstant: padding, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)

        followButton.anchor(self.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: padding, leftConstant: 0, bottomConstant: 0, rightConstant: padding, widthConstant: 120, heightConstant: 34)

        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: padding, widthConstant: 0, heightConstant: 22)
        
        usernameLabel.anchor(nil, left: profileImageView.rightAnchor, bottom: profileImageView.bottomAnchor, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 22)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: padding, rightConstant: padding, widthConstant: 0, heightConstant: 0)
    }
    
}

class UserFooter: DatasourceCell {
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .red
    }
    
}
