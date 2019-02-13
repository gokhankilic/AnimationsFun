//
//  UIButtonExt.swift
//  animationsFun
//
//  Created by Gökhan Kılıç on 6.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import UIKit

extension UIButton{
    
    func wiggleBtn(){
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    
    func dim(){
        UIView.animate(withDuration: 0.15, animations: { self.alpha = 0.75 }) { (finished) in
           UIView.animate(withDuration: 0.15 , animations: {self.alpha = 1.0} )
        }
    }
    
    func colorize(){
        let randomNumberArray = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor(displayP3Red:randomNumberArray[0]/255, green: randomNumberArray[1]/255, blue:randomNumberArray[0]/255, alpha: 1.0)
        UIView.animate(withDuration: 0.3, animations: {
            self.backgroundColor = randomColor
        })
    }
    
}
