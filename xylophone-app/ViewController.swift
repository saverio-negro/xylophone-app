//
//  ViewController.swift
//  xylophone-app
//
//  Created by Saverio Negro on 08/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    // This is a comment
    // This is a second comment
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Link up UIButton objects to a single IBAction
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let buttonKey = sender.currentTitle!
        playSound(key: buttonKey)
    }
}

