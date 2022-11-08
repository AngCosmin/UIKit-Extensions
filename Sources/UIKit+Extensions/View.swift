//
//  File.swift
//  
//
//  Created by Cosmin on 08.11.22.
//

import UIKit

extension UIView {
    convenience init(
        views: [UIView] = [],
        backgroundColor: UIColor?,
        cornerRadius: CGFloat = 0,
        borderColor: UIColor = .clear,
        borderWidth: CGFloat = 0
    ) {
        self.init()
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        
        addSubviews(views)
    }
    
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
    
    func setSubviews(_ views: [UIView]) {
        subviews.forEach { $0.removeFromSuperview() }
        
        for view in views {
            addSubview(view)
        }
    }
}
