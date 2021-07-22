//
//  ExampleCustomConfirmViewCells.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 14/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

//Cell One
class ExampleCustomLabelTableViewCell: UITableViewCell , ConfirmLblEmailUITableViewCell{
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var btnDelete : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//Cell Two
class ExampleCustomTextTableViewCell: UITableViewCell , ConfirmTxtEmailUITableViewCell{
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var btnDelete : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}


//Cell Three
class ExampleCustomAddTableViewCell: UITableViewCell , ConfirmAddEmailUITableViewCell{
    @IBOutlet weak var btnAdd : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
