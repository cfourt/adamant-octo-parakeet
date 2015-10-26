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
    
 
    @IBAction func playSlowAudio(sender: AnyObject) {
        audioPlayer.play()
    }
    
    @IBAction func playFastAudio(sender: AnyObject) {
        audioPlayer.play()
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
