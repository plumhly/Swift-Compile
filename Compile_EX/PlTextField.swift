//
//  PlTextField.swift
//  Compile_EX
//
//  Created by Plum on 2019/7/31.
//  Copyright © 2019 Plum. All rights reserved.
//

import UIKit

class PlTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let size = self.intrinsicContentSize
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override var intrinsicContentSize: CGSize {
        if isFirstResponder, let text = text {
            let size = text.size(withAttributes: typingAttributes)
            // Build time:20559.64ms
//            return CGSize(width: size.width + (rightView?.bounds.width ?? 0) + (leftView?.bounds.width ?? 0) + 22, height: bounds.height)
            
            
            // Build time: 78.59ms
                        var padding: CGFloat = 22
                        if let rightView = rightView {
                            padding += rightView.bounds.width
                        }
            
                        if let leftView = leftView {
                            padding += leftView.bounds.width
                        }
                        return CGSize(width: size.width + padding, height: bounds.height)
        }
        return super.intrinsicContentSize
    }
}
