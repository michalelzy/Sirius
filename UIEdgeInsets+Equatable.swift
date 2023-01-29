//
//  File.swift
//  
//
//  Created by 谭熙 on 2023/1/29.
//

import Foundation

import UIKit

public func + (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(
        top: lhs.top+rhs.top,
        left: lhs.left+rhs.left,
        bottom: lhs.bottom+rhs.bottom,
        right: lhs.right+rhs.right
    )
}

public func - (lhs:UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(
        top: lhs.top-rhs.top,
        left: lhs.left-rhs.left,
        bottom: lhs.bottom-rhs.bottom,
        right: lhs.right-rhs.right)
}
