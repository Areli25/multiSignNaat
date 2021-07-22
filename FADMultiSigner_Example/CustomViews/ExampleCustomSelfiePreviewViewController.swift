//
//  ExampleCustomSelfiePreviewViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 15/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomSelfiePreviewViewController: UIViewController {
    @IBOutlet weak var imgSelfie: UIImageView!
    @IBOutlet weak var btnContine: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomSelfiePreviewViewController: CustomSelfiePreviewUIObjects {
    func getSelfiePreviewImage() -> UIImageView {
        return imgSelfie
    }
    
    func getSelfiePreviewContinueBtn() -> UIButton {
        return btnContine
    }
    

}
