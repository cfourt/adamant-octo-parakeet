//
//  PlaySoundsViewController.swift
//  Pitch Perfect (again)
//
//  Created by Connor Fourt on 10/24/15.
//  Copyright © 2015 Connor Fourt. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    //making audioPlayer available throughout the file
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the url to the file movie_quote.mp3
        if let url = NSBundle.mainBundle().URLForResource("movie_quote", withExtension: "mp3"){
            audioPlayer = try! AVAudioPlayer(contentsOfURL: url)
            audioPlayer.enableRate = true
        }
        else{
            print("The path is empty.")
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func playAudio(playRate: Float){
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = playRate
        audioPlayer.play()
    }

    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }

    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(1.5)
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
