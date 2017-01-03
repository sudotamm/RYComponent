//
//  RYDatePickerView.swift
//  RootDirectory
//
//  Created by Ryan on 03/01/2017.
//  Copyright © 2017 Ryan. All rights reserved.
//

import UIKit

class RYDatePickerView{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var cancelBlock: ((UIDatePicker)->Void)?
    var confirmBlock: ((UIDatePicker)->Void)?
    
    @IBAction func pickerCancel(btn: UIButton){
        self.cancelBlock?(self.datePicker)
    }
    
    @IBAction func pickerConfirm(btn: UIButton){
        self.confirmBlock?(self.datePicker)
    }
}

//MARK: Public methods
extension RYDatePickerView{
    func reload(date: Date, animated: Bool){
        self.datePicker.setDate(date, animated: animated)
    }
}

