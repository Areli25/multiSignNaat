//
//  ExampleCustomScanQRViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 14/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomScanQRViewController: UIViewController {
    
    @IBOutlet weak var scanQRView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomScanQRViewController: CustomScanQRUIObjects {
    func getScanQRView() -> UIView {
        return scanQRView
    }
}
