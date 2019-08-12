//
//  CircularView.swift
//  AnalogStick
//
//  Created by Fellipe Calleia on 8/12/19.
//  Copyright © 2019 Fellipe Calleia. All rights reserved.
//

import UIKit

class CircularView: UIView {

    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        // Another option to make a circle:
        // context.addArc(center: center, radius: frame.size.width / 2, startAngle: 0.0, endAngle: 2.0 * CGFloat.pi, clockwise: true)
        context.addEllipse(in: rect)
        context.setFillColor(UIColor.white.cgColor)
        context.fillPath()
    }

}
