//
//  File.swift
//  
//
//  Created by Cosmin on 08.11.22.
//

import UIKit

extension UILabel {
    convenience init(
        text: String? = nil,
        attributedText: NSAttributedString? = nil,
        textColor: UIColor = .black,
        font: UIFont = .systemFont(ofSize: 14),
        textAlignment: NSTextAlignment = .left,
        numberOfLines: Int = 1,
        lineBreakMode: NSLineBreakMode = .byTruncatingTail,
        backgroundColor: UIColor? = nil
    ) {
        self.init()
        
        self.text = text
        self.textColor = textColor
        self.font = font
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
        
        self.lineBreakMode = lineBreakMode
        if let attributedText = attributedText {
            self.attributedText = attributedText
        }
        
        if let backgroundColor = backgroundColor {
            self.backgroundColor = backgroundColor
        }
    }
    
    static func create(
        text: String? = nil,
        textColor: UIColor = .black,
        font: UIFont = .systemFont(ofSize: 14),
        textAlignment: NSTextAlignment = .left
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = font
        label.textAlignment = textAlignment
        
        return label
    }
}
