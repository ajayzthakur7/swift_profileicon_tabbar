//
//  ViewController.swift
//  tabarProfileIcon
//
//  Created by Rahul Sharma on 13/02/24.
//

import UIKit
//import Kingfisher

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        

    }

}


class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
    }
    



}


class TabBar : UITabBarController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstVC = UINavigationController(rootViewController: ViewController())
        let secondVC = UINavigationController(rootViewController: ViewController1())
        
        
        firstVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"),selectedImage: UIImage(systemName: "house.fill"))
        firstVC.tabBarItem.tag = 0
        secondVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"),selectedImage: UIImage(systemName: "person.fill"))
        secondVC.tabBarItem.tag = 1
        
        self.viewControllers = [firstVC, secondVC]
    }
    
 

}



