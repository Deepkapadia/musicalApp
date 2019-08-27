//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
//Global Variable.
    //var selectedSoundFileName : String = ""
    
    //Array of sounf files...
    let soundArrays = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
    //if global variable we are using on program
        //But Try to avoid those things.
        //selectedSoundFileName = soundArrays[sender.tag - 1]
        
        
        
        playSound(soundfileName: soundArrays[sender.tag - 1])
        
    }
    
    func playSound(soundfileName: String)  {
        
        let soundURL = Bundle.main.url(forResource: soundfileName , withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        
    }

}

