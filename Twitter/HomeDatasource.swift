//
//  HomeDatasource.swift
//  Twitter
//
//  Created by Ryan Anderson on 1/31/17.
//  Copyright © 2017 Ryan Anderson. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let ryanUser = User(profileImage: UIImage(named: "ryan-1")!, name: "Ryan Anderson", username: "@andersryanc", bioText: "I like to watch movies and eat pizza!!")
        let brianUser = User(profileImage: UIImage(named: "brian")!, name: "Brian Voong", username: "@bulidthatapp", bioText: "Learning swift is really easy and fun. Join me on YouTube to learn more about iOS and programming in Swift! pplus")
        let rayUser = User(profileImage: UIImage(named: "ray")!, name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference! plus that")
        
        return [ryanUser, brianUser, rayUser]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
}
