//
//  ViewController.swift
//  3.3.HomeWork
//
//  Created by anjella on 26/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cellID = "UserTableViewCell"
    
    var modelUser = ModelUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = modelUser.users[section]
        return section.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelUser.users.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell
        
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        
        cell.nameLabel.text = user.name
        cell.userImageView.image = user.image
        
        return cell
    }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let section = modelUser.users[indexPath.section]
            let user = section[indexPath.row]
            
            let alert = UIAlertController(title: user.name, message: user.city, preferredStyle: .actionSheet)
            let profileAction = UIAlertAction(title: "Profile", style: .default) { (alert) in
                self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
            }
            let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (alert) in
                self.modelUser.users[indexPath.section].remove(at: indexPath.row)
                tableView.reloadData()
            }
            alert.addAction(profileAction)
            alert.addAction(deleteAction)
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
//            let vc = storyboard?.instantiateViewController(withIdentifier: "userViewCellViewController") as! UserViewCellViewController
//
//            let user = modelUser.users[indexPath.row]

//            vc.name1 = user
            
//            vc.city = user
//            vc.image = user
            
//            vc.name1 = person
//            vc.city1 = person
//            vc.image1 = person
////
//            navigationController?.pushViewController(vc, animated: true)
//        }
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToProfile" {
                let vc = segue.destination as! UserViewCellViewController;()
                let indexPath = sender as! IndexPath
    
                let section = modelUser.users[indexPath.section]
                let user = section[indexPath.row]
                vc.user = user
                
            }
    }
}
    

    


    
    


