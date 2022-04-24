//
//  ViewController.swift
//  FirstMiniAppTA
//
//  Created by Сергей Саченко on 24.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    
    @IBOutlet weak var trueBotton: UIButton!
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trueBotton.layer.borderColor = UIColor.green.cgColor
        trueBotton.layer.borderWidth = 5
        trueBotton.layer.cornerRadius = 15
        
        actionButton.layer.borderColor = UIColor.red.cgColor
        actionButton.layer.borderWidth = 5
        actionButton.layer.cornerRadius = 15
        
        actionButton.setTitleColor(.red, for: .highlighted)
     // actionButton.showsTouchWhenHighlighted = true
        
        actionButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)
    
    }
    @IBAction func trueResultButton(_ sender: Any) {
        newLabel.text = Source.getInfo(type: .word)
    }
    
    @IBAction func actionResultButton(_ sender: Any) {
        newLabel.text = Source.getInfo(type: .action)
    }
    
    @objc func letAction() {
        newLabel.text = Source.getInfo(type: .word)
        newLabel.text = Source.getInfo(type: .action)
    }
    
}

