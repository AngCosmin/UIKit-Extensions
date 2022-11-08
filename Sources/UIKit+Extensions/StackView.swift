//
//  File.swift
//  
//
//  Created by Cosmin on 08.11.22.
//

import UIKit

public extension UIStackView {
    convenience init(
        views: [UIView] = [],
        axis: NSLayoutConstraint.Axis,
        spacing: CGFloat = 0,
        distribution: Distribution = .fill,
        alignment: Alignment = .fill,
        margins: UIEdgeInsets = .zero
    ) {
        
        self.init()
        
        self.addArrangedSubViews(views)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = alignment
        
        if margins != .zero {
            layoutMargins = margins
            isLayoutMarginsRelativeArrangement = true
        }
    }
    
    func addArrangedSubViews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }
    
    func setArrangedSubViews(_ views: [UIView]) {
        arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        for view in views {
            addArrangedSubview(view)
        }
    }
}
