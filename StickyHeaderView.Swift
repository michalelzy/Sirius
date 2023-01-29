//
//  File.swift
//  
//
//  Created by 谭熙 on 2023/1/17.
//

import UIKit

private var ContentOffsetContext = 0
private var DefaultContentHeight: CGFloat = 64

open class StickyHeaderView: UIView {
    // MARK: - init
    func commonInit() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(backgroundImageView)
        addSubview(contentContainer)
        
        contentContainer.addSubview(shadowView)
        
        clipsToBounds = true 
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    public convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 320, height: DefaultContentHeight))
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    // MARK: - Background Image
    private let backgroundImageView = UIImageView()

    
    // MARK: - contentContainer
    private let contentContainer: UIView = {
        let view = UIView()
        
        return view
    }()
    
    // MARK: - shadowView
    private let shadowView = HeaderShadowView()
}
