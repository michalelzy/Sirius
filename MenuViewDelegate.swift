//
//  File.swift
//  
//
//  Created by 谭熙 on 2023/1/18.
//

import Foundation
@objc public protocol MenuViewDelegate {
    
    func menu(_ menu: SiriusMenuView, didSelectItemAt index: Int) 
}
