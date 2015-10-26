//
//  ViewController.swift
//  Pitch Perfect (again)
//
//  Created by Connor Fourt on 10/24/15.
//  Copyright © 2015 Connor Fourt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        //hide stop button
        stopButton.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: show text recording in progress
        //TODO: record the user's voice
        print("in record Audio")
        recordingInProgress.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }

    @IBAction func stopRecording(sender: UIButton) {
        print("stopped recording")
        recordingInProgress.hidden = true
        stopButton.hidden = true
        recordButton.enabled = true
    }
}

