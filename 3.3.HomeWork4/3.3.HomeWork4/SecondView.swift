//
//  SecondView.swift
//  3.3.HomeWork4
//
//  Created by anjella on 28/11/22.
//

import Foundation
import UIKit


class SecondView: UIViewController {
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var name: String = ""
//    var image2: UIImage
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Chat"
        
        nameLabel.text = name
        
        
        
        
    }
}
