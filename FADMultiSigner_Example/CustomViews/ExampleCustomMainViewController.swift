//
//  ExampleCustomMainViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 26/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomMainViewController: UIViewController {

    @IBOutlet weak var btnShowURL: UIButton!
    @IBOutlet weak var btnScanQR: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ExampleCustomMainViewController : CustomMainUIObjects {
    func getMainShowQRBtn() -> UIButton {
        return btnScanQR
    }
    
    func getMainShowURLBtn() -> UIButton {
        return btnShowURL
    }
    
    
}
