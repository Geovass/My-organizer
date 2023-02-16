//
//  HomeTabBarController.swift
//  Tarea1SwiftIntermedio
//
//  Created by Geovanni Romero on 14/02/23.
//
import Foundation
import UIKit

class HomeTabBarController: UITabBarController {
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewControllers()
    }

    private func setUpViewControllers(){
        //primer item
        let firstStoryboard = UIStoryboard(name: "ProfileStoryboard", bundle: .main)
        let firstViewController = firstStoryboard.instantiateViewController(withIdentifier: "Profile VC")
        let firstNavigation = UINavigationController(rootViewController: firstViewController)
        
        firstNavigation.tabBarItem.title = "Profile"
        firstNavigation.tabBarItem.image = UIImage(systemName: "person.circle")
        firstNavigation.tabBarItem.selectedImage = UIImage(systemName: "person.circle.fill")
        
        //segundo item
        let secondStoryboard = UIStoryboard(name: "HomeStoryboard", bundle: .main)
        let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "Home VC")
        let secondNavigation = UINavigationController(rootViewController: secondViewController)
        
        secondNavigation.tabBarItem.title = "Home"
        secondNavigation.tabBarItem.image = UIImage(systemName: "house.circle")
        secondNavigation.tabBarItem.selectedImage = UIImage(systemName: "house.circle.fill")
        
        //tercer item
        let thirdStoryboard = UIStoryboard(name: "AddContentStoryboard", bundle: .main)
        let thirdViewController = thirdStoryboard.instantiateViewController(withIdentifier: "AddContents VC")
        let thirdNavigation = UINavigationController(rootViewController: thirdViewController)
        
        thirdNavigation.tabBarItem.title = "Settings"
        thirdNavigation.tabBarItem.image = UIImage(systemName: "pencil.circle")
        thirdNavigation.tabBarItem.selectedImage = UIImage(systemName: "pencil.circle.fill")
        
        let homeViewControllers:[UIViewController] = [firstNavigation, secondNavigation, thirdNavigation]
        self.viewControllers = homeViewControllers
        self.selectedIndex = 0
    }

}
