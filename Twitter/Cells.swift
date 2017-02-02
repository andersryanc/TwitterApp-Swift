//
//  Cells.swift
//  Twitter
//
//  Created by Ryan Anderson on 1/31/17.
//  Copyright © 2017 Ryan Anderson. All rights reserved.
//

import LBTAComponents

let twitterBlue = UIColor(r: 61, g: 167, b: 244)
let padding: CGFloat = 12

class UserHeader: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel();
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: padding, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
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
        imageView.image = #imageLiteral(resourceName: "ryan-1")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Full Name"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@andersryanc"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.init(r: 124, g: 131, b: 139)
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.text = "I really like to go to the movies and eat pizza!!"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .clear
        textView.isEditable = false
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(twitterBlue, for: .normal)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        

        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: padding, leftConstant: padding, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)

        followButton.anchor(self.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: padding, leftConstant: 0, bottomConstant: 0, rightConstant: padding, widthConstant: 120, heightConstant: 34)

        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: padding, widthConstant: 0, heightConstant: 22)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 22)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: padding, rightConstant: padding, widthConstant: 0, heightConstant: 0)
    }
    
}

class UserFooter: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel();
        label.text = "SHOW ME MORE"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitterBlue
        return label
    }()

    override func setupViews() {
        super.setupViews()

        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: padding, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
