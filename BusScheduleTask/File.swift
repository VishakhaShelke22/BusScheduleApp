//
//  File.swift
//  BusScheduleTask
//
//  Created by Mac on 09/11/22.
//

import Foundation

import UIKit
extension UIView {

  @IBInspectable var cornerRadius: CGFloat {

   get{
        return layer.cornerRadius
    }
    set {
        layer.cornerRadius = newValue
        layer.masksToBounds = newValue > 0
    }
  }

  @IBInspectable var borderWidth: CGFloat {
    get {
        return layer.borderWidth
    }
    set {
        layer.borderWidth = newValue
    }
  }

  @IBInspectable var borderColor: UIColor? {
    get {
        return UIColor(cgColor: layer.borderColor!)
    }
    set{
        layer.borderColor = borderColor?.cgColor
    }
  }
    @IBDesignable class PaddingLabel: UILabel {

           @IBInspectable var topInset: CGFloat = 5.0
           @IBInspectable var bottomInset: CGFloat = 5.0
           @IBInspectable var leftInset: CGFloat = 7.0
           @IBInspectable var rightInset: CGFloat = 7.0

           override func drawText(in rect: CGRect) {
               let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
               super.drawText(in: rect.inset(by: insets))
           }

           override var intrinsicContentSize: CGSize {
               let size = super.intrinsicContentSize
               return CGSize(width: size.width + leftInset + rightInset,
                             height: size.height + topInset + bottomInset)
           }

           override var bounds: CGRect {
               didSet {
                   // ensures this works within stack views if multi-line
                   preferredMaxLayoutWidth = bounds.width - (leftInset + rightInset)
               }
           }
}
}
