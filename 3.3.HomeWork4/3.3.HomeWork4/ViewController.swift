//
//  ViewController.swift
//  3.3.HomeWork4
//
//  Created by anjella on 28/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
   let cellID = "cellID"

    @IBOutlet weak var table: UITableView!
    
    
//    let data: [String] = ["Anjelina Jolie","Leanardo DiCaprio","Billie  Eilish","Will Smith","Kendall Jenner","Cole Sprouse"]
    struct User {
        let title: String
        let imageName: String
    }

    let data: [User] = [
    User(title: "Anjelina Jolie", imageName: "image1"),
    User(title: "Leanardo DiCaprio", imageName: "image2"),
    User(title: "Billie  Eilish", imageName: "image3"),
    User(title: "Will Smith", imageName: "image4"),
    User(title: "Kendall Jenner", imageName: "image5"),
    User(title: "Cole Sprouse", imageName: "image6"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let user = data[indexPath.row]
        var cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
//        if cell == nil {
//            cell = UITableViewCell(style: .default, reuseIdentifier: cellID) as! TableViewCell
//        }
        
//        cell.label.text = data[indexPath.row]
//        cell.imageView!.image = UIImage(named: "image0")!
        cell.iconImageView.image = UIImage(named: user.imageName)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "detail_vc") as! SecondView
        
        let person = data[indexPath.row]
        
        vc.name = person
        
//        vc.image = person
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

