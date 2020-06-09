//
//  ViewController.swift
//  Test Camera
//
//  Created by John Melody on 24/05/2020.
//  Copyright © 2020 John Melody. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController,  UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var ImageDisplay: UIImageView!
    var isWhite = true
    var message:String = ""
    var newMedia: Bool?
    
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
        if isWhite {
            view.backgroundColor = UIColor.gray
            isWhite = false
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .camera
            present(picker, animated: true, completion: nil)
            print("Camera Intergrated ===> ")
        } else {
            print("Return")
            return
        }
        // Display Alert Dialogue
        message = "Image Captured and Displayed."
        var _:UIAlertController = UIAlertController(title: "John Melody Say: ", message: message, preferredStyle: UIAlertController.Style.alert)
        //self.presentedViewController(alertController, animated:true, completion:nil)
        // Define alertDialogue action
        //let alertAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
        // Add alertAction object to alertController.
        //alertController.addAction(alertAction)
        // Popup the alert dialog.
        //present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func PhotoLibrary(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerController.SourceType.savedPhotosAlbum) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType =
                UIImagePickerController.SourceType.photoLibrary
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true,
                    completion: nil)
            newMedia = false
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        ImageDisplay.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage;
        dismiss(animated: true, completion: nil)
    }
}
