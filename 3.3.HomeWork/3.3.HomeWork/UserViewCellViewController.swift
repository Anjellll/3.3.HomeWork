//
//  UserViewCellViewController.swift
//  3.3.HomeWork
//
//  Created by anjella on 28/11/22.
//

import UIKit

class UserViewCellViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var name1: String = ""
    var city: String = ""
    
    
//
//    init(name: String,city: String,image: UIImage){
//
//    }
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = user.name
        cityLabel.text = user.city
        imageView.image = user.image
        
    }

}
