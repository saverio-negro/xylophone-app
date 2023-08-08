//
//  ViewController.swift
//  xylophone-app
//
//  Created by Saverio Negro on 08/08/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        let buttonKey = (sender.titleLabel?.text!)!
        playSound(key: buttonKey)
    }
    
    func playSound(key: String) {
        
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch let error {
            print(error)
        }
    }
}

