//
//  ViewController.swift
//  AnalogStick
//
//  Created by Fellipe Calleia on 8/12/19.
//  Copyright © 2019 Fellipe Calleia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let smallerSideLength = min(view.bounds.width, view.bounds.height)
        let size = CGSize(width: smallerSideLength, height: smallerSideLength)
        let frame = CGRect(origin: CGPoint.zero, size: size)
        let circularView = CircularView(frame: frame)
        circularView.center = view.center
        view.addSubview(circularView)
    }


}

