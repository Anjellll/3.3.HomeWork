//
//  ModelUser.swift
//  3.3.HomeWork
//
//  Created by anjella on 26/11/22.
//

import Foundation
import UIKit


class ModelUser {
    var users =  [[User]]()
    init() {
        setup()
    }
    
    func setup() {
        let user1 = User(name: "Angelina Jolie", city: "Los Angeles", image: UIImage(named: "user1")!)
        let user2 = User(name: "Leonardo DiCaprio", city: "Los Angeles", image: UIImage(named: "user2")!)
        let user3 = User(name: "Bilie Eilish ", city: "Los Angeles", image: UIImage(named: "user3")!)
        let user4 = User(name: "Will Smith", city: "Philadelphia", image: UIImage(named: "user4")!)
        let user5 = User(name: "Kendall Jenner", city: "Los Angeles", image: UIImage(named: "user5")!)
        let user6 = User(name: "Cole Sprouse", city: "Italia", image: UIImage(named: "user6")!)
        
        let usersArray = [user1,user2,user3,user4,user5,user6]
        users.append(usersArray)
//        users.append(user1)
//        users.append(user2)
//        users.append(user3)
//        users.append(user4)
//        users.append(user5)
//        users.append(user6)
        
    }
}
