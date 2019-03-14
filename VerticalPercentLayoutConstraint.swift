//
//  VerticalPercentLayoutConstraint.swift
//
//  Created by João Pedro Silva on 01/03/2019.

import Foundation

class VerticalPercentLayoutConstraint: NSLayoutConstraint {
    
    @IBInspectable var marginPercent: CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        guard marginPercent != 0 else { return }
        
        if let secondView = secondItem as? UIView {
            constant = secondView.height * marginPercent
        }
    }
}
