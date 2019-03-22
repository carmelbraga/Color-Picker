//
//  ViewController.swift
//  Color Picker
//
//  Created by Carmel Braga on 3/20/19.
//  Copyright © 2019 Carmel Braga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    private let background = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    let initialColor = 0
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(initialColor, inComponent: 0, animated: false)
        detailLabel.text = colors[initialColor]
        mainView.backgroundColor = background[initialColor]
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        detailLabel.text = colors[row]
        mainView.backgroundColor = background[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return colors[row]
    }
}

