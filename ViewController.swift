//
//  ViewController.swift
//  PlayerAppTwo
//
//  Created by Ali Kaisarbek on 06.02.2022.
//

import UIKit
import AVFoundation

private struct Constants {
    static let melodyExtension: String = "wav"
}



class ViewController: UIViewController {
    
    var player: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
    @IBAction private func buttonDidTap(_ sender: UIButton) {
        playSound(with: sender.currentTitle!)

}
        
    private func playSound(with melodyName: String) {
        let url = Bundle.main.url(forResource: melodyName, withExtension: Constants.melodyExtension)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}

