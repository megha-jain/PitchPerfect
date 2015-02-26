//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Megha on 2/21/15.
//  Copyright (c) 2015 Megha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //To see documentation about a class, hold the option key & click

    @IBOutlet weak var recordingInProgress: UILabel!
    //Here we created a variable called recordingInProgress of type UILabel
    //IB stands for interface builder. @IBOutlet tells us that this is not an ordinary variable, but is linked to the storyboard (or IB) somehow
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //Hide the stop button
        recordButton.enabled = true
        stopButton.hidden = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        stopButton.hidden = false
        recordingInProgress.hidden = false
        //TODO: Record the user's voice
        println("in recordAudio")
    }
    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}

