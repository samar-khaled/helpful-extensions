//
//  UIWindow+TopViewController.swift
//
//  Created by Smsma Mac on 10/17/19.
//  Copyright © 2019 Samar Khaled. All rights reserved.
//

import UIKit

extension UIWindow {
    
    func topMostViewController() -> UIViewController? {
        guard let rootViewController = self.rootViewController else {
            return nil
        }
        
        return topViewController(for: rootViewController)
    }
    
    func topViewController(for rootViewController: UIViewController?) -> UIViewController? {
        guard let rootViewController = rootViewController else {
            return nil
        }
        
        guard let presentedViewController = rootViewController.presentedViewController else {
            return rootViewController
        }
        
        switch presentedViewController {
            case is UINavigationController:
                let navigationController = presentedViewController as! UINavigationController
                return topViewController(for: navigationController.viewControllers.last)
            case is UITabBarController:
                let tabBarController = presentedViewController as! UITabBarController
                return topViewController(for: tabBarController.selectedViewController)
            default:
                return topViewController(for: presentedViewController)
        }
    }
    
}
