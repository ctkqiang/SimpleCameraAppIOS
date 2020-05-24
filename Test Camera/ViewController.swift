//
//  ViewController.swift
//  Test Camera
//
//  Created by John Melody on 24/05/2020.
//  Copyright © 2020 John Melody. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var ImageDisplay: UIImageView!
    @IBOutlet weak var CameraButton: UIButton!
    @IBOutlet weak var LibraryButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        print("Out Of Memory");
    }
    
    // Mark: Action:
    @IBAction func PhotoLibraryAction(sende: UIButton) {
        let picker = UIImagePickerController();
        picker.delegate = self;
        picker.sourceType
    }
}
