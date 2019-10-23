//
//  DispatchQueue+Delay.swift
//
//  Created by Smsma Mac on 10/9/19.
//  Copyright © 2019 Samar Khaled. All rights reserved.
//

import Foundation

extension DispatchQueue {
  
  class func delay(_ delay: Double, closure: @escaping ()->()) {
    DispatchQueue.main.asyncAfter(
      deadline: DispatchTime.now() + delay,
      execute: closure
    )
  }
  
}

