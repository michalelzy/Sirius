//
//  File.swift
//  
//
//  Created by 谭熙 on 2023/1/18.
//

import Foundation
import UIKit

extension UIScrollView {
    
    /// Content offset that incorporates content offset to align default value to (0,0) instead of an adjusted one.
    var normalizedContentOffset: CGPoint {
        get {
            let contentOffset = self.contentOffset
            let contentInset = self.effectiveContentInset
            
        }
    }
    
    /// Effective content inset used by a scroll view for both iOS 10/11. iOS 11 introduced new `contentInsetAdjustmentBehavior` that may
    /// include a new `UIView.safeAreaInsets` or not depending on the mode.
    var effectiveContentInset: UIEdgeInsets {
        get {
            if #available(iOS 11, *) {
                return adjustedContentInset
            } else {
                return contentInset
            }
        }
        
        set {
            if #available(iOS 11.0, *), contentInsetAdjustmentBehavior != .never {
                contentInset = newValue - safeAreaInsets
                
            } else {
                contentInset = newValue
            }
        }
    }
}
