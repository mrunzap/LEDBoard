//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by donghun on 2022/09/28.
//
protocol LEDBoardSettingDelegate : AnyObject{
    func changedSetting(text : String?, textColor:UIColor, backgroundColor: UIColor)
}


import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var yellowbutton: UIButton!
    @IBOutlet weak var purplebutton: UIButton!
    @IBOutlet weak var greenbutton: UIButton!
    @IBOutlet weak var blackbutton: UIButton!
    @IBOutlet weak var bluebutton: UIButton!
    @IBOutlet weak var orangebutton: UIButton!
    
    @IBOutlet weak var textLabel: UITextField!
    
    weak var delegate : LEDBoardSettingDelegate?
    var textColor : UIColor = .yellow
    var backgroundColor : UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yellowbutton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.purplebutton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else if sender == self.greenbutton {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackGroundColorButton(_ sender: UIButton) {
        if sender == self.blackbutton {
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        } else if sender == self.bluebutton {
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        } else if sender == self.orangebutton {
            self.changeBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        self.delegate?.changedSetting(text: self.textLabel.text
                                      , textColor: self.textColor
                                      , backgroundColor: self.backgroundColor)
    }
    
    private func changeTextColor(color: UIColor) {
        self.yellowbutton.alpha = color == .yellow ? 1 : 0.2
        self.purplebutton.alpha = color == .purple ? 1 : 0.2
        self.greenbutton.alpha  = color == .green ? 1 : 0.2
    }
    
    private func changeBackgroundColor(color: UIColor){
        self.blackbutton.alpha = color == .black ? 1 : 0.2
        self.bluebutton.alpha = color == .blue ? 1 : 0.2
        self.orangebutton.alpha  = color == .orange ? 1 : 0.2
    }
}


