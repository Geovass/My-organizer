//
//  LogInViewController.swift
//  Tarea1SwiftIntermedio
//
//  Created by Geovanni Romero on 13/02/23.
//

import UIKit

class LogInViewController: UIViewController {

    var user = User(name: "", edad: 0, email: "", password: "")
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpConstrains()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        guard let user = userTextField.text,
              let password = passwordTextField.text
        else{
            return
        }
        
        if user.isEmpty || password.isEmpty {
            showAlert("Error", "Ingresa todos los campos")
        }
        else{
            let homeController = HomeTabBarController()
            
            let user = User(name: "myUser", edad: 0, email: "my_email.com", password: password)
            homeController.user = user
            
            homeController.modalPresentationStyle = .fullScreen
            self.present(homeController, animated: true, completion: nil)
        }
    }
    
    /*let registerViewController = HomeTabBarController()
     let navigationController = UINavigationController(rootViewController: registerViewController)
     self.navigationController?.pushViewController(registerViewController, animated: true)*/
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        let registerStoryboard = UIStoryboard(name: "RegisterStoryboard", bundle: .main)
        let registerViewController = registerStoryboard.instantiateViewController(withIdentifier: "Register VC") as! RegisterViewController
        self.present(registerViewController, animated: true)
    }
    
    func showAlert(_ titulo:String, _ mensaje:String){
        let alertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let aceptAction = UIAlertAction(title: "Aceptar", style: .default)
        
        alertController.addAction(aceptAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func setUpUI(){
        headerView.backgroundColor = .purple
        headerView.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.text = "¡Tu organizador de contenido personalizado!"
        welcomeLabel.numberOfLines = 0
        welcomeLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 28)
        welcomeLabel.textColor = .white
        
        userTextField.placeholder = "Nombre de Usuario"
        passwordTextField.placeholder = "Contraseña"
        passwordTextField.isSecureTextEntry = true
        
        logInButton.setTitle("Ingresar", for: .normal)
        logInButton.tintColor = .purple
        logInButton.layer.cornerRadius = 10
        
        optionLabel.text = "------- o -------"
        
        signUpButton.setTitle("Crear cuenta", for: .normal)
        signUpButton.tintColor = .cyan
        signUpButton.layer.cornerRadius = 10
        
        self.title = "Mi organizador de contenido"
    }
    
    func setUpConstrains(){
        headerView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        headerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
    }
}
