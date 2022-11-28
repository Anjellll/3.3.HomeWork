//
//  User.swift
//  3.3.HomeWork
//
//  Created by anjella on 26/11/22.
//

import Foundation
import UIKit

class User: NSObject {
    var name: String
    var city: String
    var image: UIImage
    
    init(name: String, city: String, image: UIImage) {
        self.name = name
        self.city = city
        self.image = image
    }
}
