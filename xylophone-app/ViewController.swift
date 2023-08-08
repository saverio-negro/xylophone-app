//
//  ViewController.swift
//  xylophone-app
//
//  Created by Saverio Negro on 08/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let buttonKey = sender.currentTitle!
        playSound(key: buttonKey)
    }
    
    func playSound(key: String) {
        
    }
}

