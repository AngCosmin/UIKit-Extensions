//
//  File.swift
//  
//
//  Created by Cosmin on 08.11.22.
//

import UIKit

extension UITextField {
    convenience init(
        borderStyle: UITextField.BorderStyle,
        textColor: UIColor,
        font: UIFont
    ) {
        self.init()
        
        self.borderStyle = borderStyle
        self.textColor = textColor
        self.font = font
    }
}
