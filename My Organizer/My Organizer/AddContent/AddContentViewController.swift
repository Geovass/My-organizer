//
//  AddContentViewController.swift
//  My Organizer
//
//  Created by alumno on 15/02/23.
//

import Foundation
import UIKit

class AddContentViewController: UIViewController {
    
    var user : User?
    var profile : ProfileViewController?
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var headerSettingsView: UIView!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var changeUserNameLabel: UILabel!
    @IBOutlet weak var changeNameTextField: UITextField!
    @IBOutlet weak var oldPasswordLabel: UILabel!
    @IBOutlet weak var oldPasswordTextField: UITextField!
    @IBOutlet weak var newPasswordLabel: UILabel!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var updateButton: UIButton!
    @IBOutlet weak var changeSuccessLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    @IBAction func changeButtonPressed(_ sender: Any) {
        let password = String(user?.password ?? "")
        
        guard let newPassword = newPasswordTextField.text,
              let oldPassword = oldPasswordTextField.text,
              let userName = changeNameTextField.text
        else{
            return
        }
        
        if userName.isEmpty || oldPassword.isEmpty || newPassword.isEmpty {
            showAlert("Error", "Ingresa todos los campos")
        }
        /*else if oldPassword != password {
            showAlert("Error", "La contraseña anterior no coincide")*/
        //}
        else{
            user?.name = userName
            user?.password = newPassword
            profile?.user = user!
            
            changeSuccessLabel.text = "¡Datos actualizados exitosamente!"
            changeSuccessLabel.isHidden = false
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        setUpUI()
    }
    
    func showAlert(_ titulo:String, _ mensaje:String){
        let alertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let aceptAction = UIAlertAction(title: "Aceptar", style: .default)
        
        alertController.addAction(aceptAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func setUpUI(){
        let email = String(user?.email ?? "")
        let usuario = String(user?.name ?? "")
        
        headerSettingsView.backgroundColor = .purple
        settingsLabel.text = "Modifica tus datos"
        settingsLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        settingsLabel.textColor = .white
        
        infoLabel.text = "Hola " + email
        changeUserNameLabel.text = "Username"
        oldPasswordLabel.text = "Password anterior"
        newPasswordLabel.text = "Password nueva"
        
        changeNameTextField.text = usuario
        oldPasswordTextField.text = ""
        oldPasswordTextField.isSecureTextEntry = true
        newPasswordTextField.text = ""
        newPasswordTextField.isSecureTextEntry = true
        updateButton.setTitle("Actualizar", for: .normal)
        updateButton.tintColor = .purple
        updateButton.layer.cornerRadius = 10
        changeSuccessLabel.isHidden = true
        
    }
    
}
