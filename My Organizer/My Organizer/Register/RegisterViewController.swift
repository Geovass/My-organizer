//
//  RegisterViewController.swift
//  Tarea1SwiftIntermedio
//
//  Created by Geovanni Romero on 13/02/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    let colorBase:UIColor = UIColor(red: 1, green: 142/255, blue: 36/255, alpha: 1)
    @IBOutlet weak var ageIndicatorLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func ageSliderChanged(_ sender: Any) {
        let edad: Int = Int(ageSlider.value)
        ageIndicatorLabel.text = String(edad)
    }
    
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        let edad = Int(ageSlider.value)
        guard let user = userNameInput.text,
              let password = passwordInput.text,
              let email = emailInput.text
        else{
            return
        }
        
        if user.isEmpty || password.isEmpty || email.isEmpty {
            showAlert("Error", "Debes llenar todos los campos")
        }
        else{
            /*let homeController = HomeTabBarController()
            
            let user = User(name: user, edad: edad, email: email, password: password)
            homeController.user = user
            
            homeController.modalPresentationStyle = .fullScreen
            self.present(homeController, animated: true)*/
            dismiss(animated: true)
        }
    }

    
    func showAlert(_ titulo:String, _ mensaje:String){
        let alertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let aceptAction = UIAlertAction(title: "Aceptar", style: .default)
        
        alertController.addAction(aceptAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func setUpUI(){
        userNameLabel.text = "Nombre de usuario"
        emailLabel.text = "Correo"
        passwordLabel.text = "Contraseña"
        ageLabel.text = "Edad"
        userNameInput.placeholder = "Username"
        emailInput.placeholder = "Email"
        passwordInput.placeholder = "Password"
        passwordInput.isSecureTextEntry = true
        
        ageSlider.minimumValue = 10
        ageSlider.maximumValue = 90
        ageSlider.tintColor = colorBase
        ageIndicatorLabel.text = "10"
        
        registerButton.setTitle("Crear cuenta", for: .normal)
        registerButton.layer.cornerRadius = 10
        registerButton.tintColor = colorBase
        
        self.title = "Crea tu cuenta"
    }
    

}
