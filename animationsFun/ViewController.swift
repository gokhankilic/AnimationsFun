//
//  ViewController.swift
//  animationsFun
//
//  Created by Gökhan Kılıç on 6.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorizeBtn: UIButton!
    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func colorizeBtnPressed(_ sender: Any) {
        colorizeBtn.colorize()
        colorizeBtn.wiggleBtn()
        colorizeBtn.dim()
    }
    
    @IBAction func wiggleBtnPressed(_ sender: Any) {
        wiggleBtn.wiggleBtn()
        
    }
    
    @IBAction func dimBtnPressed(_ sender: Any) {
        dimBtn.dim()
    }
}

