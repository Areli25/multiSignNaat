//
//  ExampleCustomConfirmViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 14/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomConfirmViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var btnInfo: UIButton!
    
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

extension ExampleCustomConfirmViewController : CustomConfirmUIObjects {
    func getConfirmCancelBtn() -> UIButton {
        return self.btnCancel
    }
    
    func getConfirmInfoBtn() -> UIButton {
        return self.btnInfo
    }
    
    func getConfirmContinueBtn() -> UIButton {
        return self.btnContinue
    }
    
    func getConfirmTableView() -> UITableView {
        return self.tableView
    }
}
