//
//  Helpers.swift
//  animationsFun
//
//  Created by Gökhan Kılıç on 6.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity : Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    
    return randomNumberArray
}
