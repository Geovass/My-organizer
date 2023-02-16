//
//  ProfileViewController.swift
//  Tarea1SwiftIntermedio
//
//  Created by Geovanni Romero on 14/02/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var user : User?
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailUserLabel: UILabel!
    @IBOutlet weak var friendsImage: UIImageView!
    @IBOutlet weak var friendsLabel: UILabel!
    @IBOutlet weak var friendsNumberLabel: UILabel!
    @IBOutlet weak var achievementsImage: UIImageView!
    @IBOutlet weak var achievementsLabel: UILabel!
    @IBOutlet weak var achievementsNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpUI()
    }
    
    func setUpUI(){
        userNameLabel.text = user?.name
        userNameLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        
        emailUserLabel.text = user?.email
        emailUserLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        
        profileImage.image = UIImage(systemName: "person.circle.fill")
        profileImage.contentMode = .scaleAspectFit
        
        friendsImage.image = UIImage(systemName: "person.2.circle.fill")
        friendsImage.contentMode = .scaleAspectFit
        friendsLabel.text = "Tus contactos"
        friendsLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        friendsNumberLabel.text = "0 contactos registrados"
        
        achievementsImage.image = UIImage(systemName: "trophy.fill")
        friendsImage.contentMode = .scaleAspectFit
        achievementsLabel.text = "Tus logros"
        achievementsLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        achievementsNumberLabel.text = "Consigue algunos logros para desbloquear funciones alucinantes"
        achievementsNumberLabel.numberOfLines = 0
    }
}
