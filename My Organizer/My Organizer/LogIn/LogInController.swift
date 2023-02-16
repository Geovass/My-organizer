//
//  LogInViewController.swift
//  Tarea1SwiftIntermedio
//
//  Created by Geovanni Romero 13/02/23.
//

import UIKit

class LogInViewController: UIViewController {

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpConstrains()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        guard let user = userTextField.text,
              let pass = PasswordTextField.text
        else{
            return
        }
        
        if user.isEmpty || pass.isEmpty {
            showAlert("Error", "Ingresa todos los campos")
        }
        else{
            let homeController = HomeTabBarController()
            
            let user = User(name: "Pepe El Toro", edad: 20, email: user, pass: pass)
            homeController.user = user
            
            homeController.modalPresentationStyle = .fullScreen
            self.present(homeController, animated: true, completion: nil)
        }
    }
    
    @IBAction func forgotPressed(_ sender: Any) {
        showAlert("Alerta", "Lastima amigo, sigue buscandola")
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        let regStoryboard = UIStoryboard(name: "RegisterStoryboard", bundle: .main)
        let regController = regStoryboard.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterViewController
        
        self.navigationController?.pushViewController(regController, animated: true)
    }
    
    func showAlert(_ titulo:String, _ mensaje:String){
        let alertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let aceptAction = UIAlertAction(title: "Aceptar", style: .default)
        
        alertController.addAction(aceptAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func setUpUI(){
        headerView.backgroundColor = colorBase
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        userTextField.placeholder = "Correo"
        PasswordTextField.placeholder = "Contraseña"
        PasswordTextField.isSecureTextEntry = true
        
        logInButton.setTitle("Ingresar", for: .normal)
        logInButton.tintColor = colorBase
        logInButton.layer.cornerRadius = 10
        
        forgotPassword.setTitle("¿Olvide mi contraseña?", for: .normal)
        OptionLabel.text = "-------o-------"
        
        signUpLabel.setTitle("Crear cuenta", for: .normal)
        signUpLabel.tintColor = colorBase
        signUpLabel.layer.cornerRadius = 10
        
        self.title = "Mi red"

    }
    
    func setUpConstrains(){
        headerView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        headerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
    }


}
