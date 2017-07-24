//
//  BuzzPicker.swift
//  ibuzz
//
//  Created by Buzzyears on 13/01/17.
//  Copyright © 2017 buzzyears. All rights reserved.
//

import UIKit

protocol BuzzPickerDelegate {
    func didSelectPicker(index:Int)
}

class BuzzPicker: UIPickerView,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var buzzPickerDelegate:   BuzzPickerDelegate?
    
    var dataSourceArray =   [String](){
        didSet{
            reloadAllComponents()
        }
    }

    override func awakeFromNib() {
        self.delegate   =   self
        self.dataSource =   self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSourceArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSourceArray[row]
    }
   
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            buzzPickerDelegate?.didSelectPicker(row)
    }
    

}
