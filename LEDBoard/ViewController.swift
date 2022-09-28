//
//  ViewController.swift
//  LEDBoard
//
//  Created by donghun on 2022/09/28.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.text = "Setting"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        // optional 벗겨내기
        
        if let text = text {
        
            if text.isEmpty {
                self.contentsLabel.text = "나의 아름다운 무명시절이여"
            } else {
                self.contentsLabel.text = text
            }
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }

}

