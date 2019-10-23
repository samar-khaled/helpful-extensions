//
//  UIViewController+AddRemoveChild.swift
//
//  Created by Smsma Mac on 10/18/19.
//  Copyright © 2019 Samar Khaled. All rights reserved.
//

import UIKit

@nonobjc extension UIViewController {
    
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        
        addChild(child)
        
        if let frame = frame {
            child.view.frame = frame
        }
        
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        
        // Just to be safe, we check that this view controller is actually added to a parent before removing it.
        guard parent != nil else {
            return
        }
        
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
        
    }
}

