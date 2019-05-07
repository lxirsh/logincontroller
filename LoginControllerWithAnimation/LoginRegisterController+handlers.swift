//
//  LoginRegisterController+handlers.swift
//  LoginControllerWithAnimation
//
//  Created by Lance Hirsch on 4/30/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

extension LoginRegisterController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func handleRegister() {
        guard let name = nameTextField.text,
            let email = emailTextField.text,
            let password = passwordTextField.text else {
                print("Invalid form")
                // Alert user
                return
        }
        // Handle registration
    }
    
    @objc func handleSelectProfileImageView() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        
        present(picker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var selectedImageFromPicker: UIImage?
        
        if let editedImage = info[.editedImage] as? UIImage {
            selectedImageFromPicker = editedImage
        } else if let originalImage = info[.originalImage] as? UIImage {
            selectedImageFromPicker = originalImage
        }
        
        if let selectedImage = selectedImageFromPicker {
            profileImageView.image = selectedImage
        }
        
        dismiss(animated: true, completion: nil)
    }

}
