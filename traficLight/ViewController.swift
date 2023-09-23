//
//  ViewController.swift
//  traficLight
//
//  Created by Nikolai Grachev on 23.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var traficLight: UIStackView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        traficLight.viewWithTag(1)?.alpha = 0.3
        traficLight.viewWithTag(2)?.alpha = 0.3
        traficLight.viewWithTag(3)?.alpha = 0.3
        
        traficLight.viewWithTag(1)?.layer.cornerRadius = 90
        traficLight.viewWithTag(2)?.layer.cornerRadius = 90
        traficLight.viewWithTag(3)?.layer.cornerRadius = 90
    
        
    }


}

