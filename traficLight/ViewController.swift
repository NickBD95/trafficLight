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
        traficLight.viewWithTag(1)?.alpha = 0.2
        traficLight.viewWithTag(2)?.alpha = 0.2
        traficLight.viewWithTag(3)?.alpha = 0.2

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        traficLight.viewWithTag(1)?.layer.cornerRadius = (traficLight.viewWithTag(1)?.frame.width ?? 0) / 2
        traficLight.viewWithTag(2)?.layer.cornerRadius = (traficLight.viewWithTag(2)?.frame.width ?? 0) / 2
        traficLight.viewWithTag(3)?.layer.cornerRadius = (traficLight.viewWithTag(3)?.frame.width ?? 0) / 2
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        button.setTitle("NEXT", for: .normal)
      
        if traficLight.viewWithTag(1)?.alpha != 1 && traficLight.viewWithTag(2)?.alpha != 1 {
            traficLight.viewWithTag(1)?.alpha = 1
            traficLight.viewWithTag(3)?.alpha = 0.2
        } else if traficLight.viewWithTag(1)?.alpha == 1 {
            traficLight.viewWithTag(1)?.alpha = 0.2
            traficLight.viewWithTag(2)?.alpha = 1
        } else {
            traficLight.viewWithTag(2)?.alpha = 0.2
            traficLight.viewWithTag(3)?.alpha = 1
        }
    }

}
