//
//  RoundButton.swift
//  Calculator
//
//  Created by Kerem Demir on 7.06.2022.
//

import UIKit
@IBDesignable

class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
}

