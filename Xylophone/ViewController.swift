//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
       // print(sender.currentTitle!)
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { //
            print("End")
        }
        playSound(soundType: sender.currentTitle!)
    }
    
    func playSound(soundType: String) {
        let url = Bundle.main.url(forResource: soundType, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


