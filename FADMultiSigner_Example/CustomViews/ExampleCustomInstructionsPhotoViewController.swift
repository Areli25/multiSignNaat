//
//  ExampleInstructionsPhotoViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 13/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomInstructionsPhotoViewController: UIViewController {
    
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var imgAgree: UIImageView!
    @IBOutlet weak var btnAgree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomInstructionsPhotoViewController : CustomInstructionsPhotoUIObjects {
    func getInstructionsPhotoBtnCaptureFace() -> UIButton {
        return btnContinue
    }
    
    func getInstructionsPhotoBtnCancel() -> UIButton {
        return btnCancel
    }
    
    func getInstructionsPhotoBtnAgree() -> UIButton {
        return btnAgree
    }
}
