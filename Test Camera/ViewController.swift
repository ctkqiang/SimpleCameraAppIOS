//
//  ViewController.swift
//  Test Camera
//
//  Created by John Melody on 24/05/2020.
//  Copyright © 2020 John Melody. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var ImageDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Out Of Memory")
    }
    
    // Mark: Action
    @IBAction func CameraButton(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
        print("Camera Intergrated ===> ")
    }
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        ImageDisplay.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage;
        dismiss(animated: true, completion: nil)
    }
    
}
