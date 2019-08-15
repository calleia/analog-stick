//
//  CircularView.swift
//  AnalogStick
//
//  Created by Fellipe Calleia on 8/12/19.
//  Copyright © 2019 Fellipe Calleia. All rights reserved.
//

import UIKit

class CircularView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setBackgroundColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setBackgroundColor()
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        // Another option to make a circle:
        // context.addArc(center: center, radius: frame.size.width / 2, startAngle: 0.0, endAngle: 2.0 * CGFloat.pi, clockwise: true)
        context.addEllipse(in: rect)
        context.setFillColor(UIColor.white.cgColor)
        context.fillPath()
        
        let maskLayer = CAShapeLayer()
        let path = UIBezierPath(ovalIn: rect)
        maskLayer.path = path.cgPath
        layer.mask = maskLayer
    }
    
    private func setBackgroundColor() {
        backgroundColor = UIColor.clear
    }

}
