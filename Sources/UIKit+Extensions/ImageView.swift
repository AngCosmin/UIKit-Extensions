//
//  File.swift
//  
//
//  Created by Cosmin on 08.11.22.
//

import UIKit

extension UIImageView {
    convenience init(
        imageName: String? = nil,
        image: UIImage? = nil,
        contentMode: UIView.ContentMode = .scaleAspectFill,
        borderColor: UIColor? = nil,
        borderWidth: CGFloat = 2,
        cornerRadius: CGFloat? = nil,
        tintColor: UIColor? = nil
    ) {
        self.init()
        
        if let imageName = imageName {
            self.image = UIImage(named: imageName)
        } else if let image = image {
            self.image = image
        }
        
        if let tintColor = tintColor {
            self.image = self.image?.withRenderingMode(.alwaysTemplate)
            self.tintColor = tintColor
        }
        
        self.contentMode = contentMode
        
        if let borderColor = borderColor {
            layer.borderWidth = borderWidth
            layer.borderColor = borderColor.cgColor
        }
        
        if let cornerRadius = cornerRadius {
            layer.cornerRadius = cornerRadius
            clipsToBounds = true
        }
    }
    
    static func create(
        imageName: String,
        contentMode: UIView.ContentMode = .scaleAspectFit
    ) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: imageName)
        imageView.contentMode = contentMode
        
        return imageView
    }
}
