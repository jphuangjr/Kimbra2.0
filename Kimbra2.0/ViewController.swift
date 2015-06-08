//
//  ViewController.swift
//  Kimbra2.0
//
//  Created by Joshua Huang on 5/25/15.
//  Copyright (c) 2015 Joshua Huang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate{
    
    var on = [0,0,0,0,0,0,0,0,0]
    var filled = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var counter = 0;
    var old_counter_active = false;
    var old_counter = 0;
    
    
    var session = AVAudioSession.sharedInstance()
    var url1: NSURL?
    var url2: NSURL?
    var url3: NSURL?
    var url4: NSURL?
    var url5: NSURL?
    var url6: NSURL?
    var url7: NSURL?
    var url8: NSURL?
    var url9: NSURL?
    var url10: NSURL?
    var audioPlayer: AVAudioPlayer?
    var audioPlayer2: AVAudioPlayer?
    var audioPlayer3: AVAudioPlayer?
    var audioPlayer4: AVAudioPlayer?
    var audioPlayer5: AVAudioPlayer?
    var audioPlayer6: AVAudioPlayer?
    var audioPlayer7: AVAudioPlayer?
    var audioPlayer8: AVAudioPlayer?
    var audioPlayer9: AVAudioPlayer?
    var audioPlayer10: AVAudioPlayer?
    var audioRecorder: AVAudioRecorder?
    var column = 0
    var row = 1
    var index = CGFloat(50)
    func run() {
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        print(dirPaths)
        let docsDir = dirPaths[0] as! String
        println(docsDir)
        var soundFilePath =
        docsDir.stringByAppendingPathComponent("sound\(counter).caf")
        println(soundFilePath)
        
        
        var soundFileURL = NSURL(fileURLWithPath: soundFilePath)
        if counter == 0 {
            url1 = soundFileURL
        }
        if counter == 2 {
            url2 = soundFileURL
        }
        if counter == 4 {
            url3 = soundFileURL
        }
        if counter == 6 {
            url4 = soundFileURL
        }
        if counter == 8 {
            url5 = soundFileURL
        }
        if counter == 10 {
            url6 = soundFileURL
        }
        if counter == 12 {
            url7 = soundFileURL
        }
        if counter == 14 {
            url8 = soundFileURL
        }
        if counter == 16 {
            url9 = soundFileURL
        }
        let recordSettings =
        [AVEncoderAudioQualityKey: AVAudioQuality.Min.rawValue,
            AVEncoderBitRateKey: 16,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey: 44100.0]
        
        var error: NSError?
        
        let audioSession = AVAudioSession.sharedInstance()
        audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
            error: &error)
        
        if let err = error {
            println("audioSession error: \(err.localizedDescription)")
        }
        
        audioRecorder = AVAudioRecorder(URL: soundFileURL,
            settings: recordSettings as [NSObject : AnyObject], error: &error)
        
        if let err = error {
            println("audioSession error: \(err.localizedDescription)")
        } else {
            audioRecorder?.prepareToRecord()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var gesture1: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed1:")
        var gesture2: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed2:")
        var gesture3: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed3:")
        var gesture4: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed4:")
        var gesture5: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed5:")
        var gesture6: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed6:")
        var gesture7: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed7:")
        var gesture8: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed8:")
        var gesture9: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed9:")
        
        gesture1.minimumPressDuration = 2.0
        gesture2.minimumPressDuration = 2.0
        gesture3.minimumPressDuration = 2.0
        gesture4.minimumPressDuration = 2.0
        gesture5.minimumPressDuration = 2.0
        gesture6.minimumPressDuration = 2.0
        gesture7.minimumPressDuration = 2.0
        gesture8.minimumPressDuration = 2.0
        gesture9.minimumPressDuration = 2.0
        
        self.button1.addGestureRecognizer(gesture1)
        self.button2.addGestureRecognizer(gesture2)
        self.button3.addGestureRecognizer(gesture3)
        self.button4.addGestureRecognizer(gesture4)
        self.button5.addGestureRecognizer(gesture5)
        self.button6.addGestureRecognizer(gesture6)
        self.button7.addGestureRecognizer(gesture7)
        self.button8.addGestureRecognizer(gesture8)
        self.button9.addGestureRecognizer(gesture9)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func longPressed1(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button1");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[0] = 0;
            filled[0] = 0;
            filled[1] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 0
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed2(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button2");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[1] = 0;
            filled[2] = 0;
            filled[3] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 2
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed3(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button3");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[2] = 0;
            filled[4] = 0;
            filled[5] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 4
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed4(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button4");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[3] = 0;
            filled[6] = 0;
            filled[7] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 6
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed5(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button5");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[4] = 0;
            filled[8] = 0;
            filled[9] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 8
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed6(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button6");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[5] = 0;
            filled[10] = 0;
            filled[11] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 10
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed7(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button7");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[6] = 0;
            filled[12] = 0;
            filled[13] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 12
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed8(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button8");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[7] = 0;
            filled[14] = 0;
            filled[15] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 14
            button10.enabled = true;
            refresh();
        }
    }
    func longPressed9(longPress: UIGestureRecognizer){
        if(longPress.state == UIGestureRecognizerState.Ended){
            println("button9");
            
        }
        else if(longPress.state == UIGestureRecognizerState.Began){
            on[8] = 0;
            filled[16] = 0;
            filled[17] = 0;
            old_counter_active = true
            old_counter = counter;
            counter = 16
            button10.enabled = true;
            refresh();
        }
    }


    @IBAction func buttons(sender: UIButton) {
        if sender.tag == 1{
            
            if filled[0] == 1 {
                if on[0] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer = AVAudioPlayer(contentsOfURL: url1,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer?.numberOfLoops = -1
                    audioPlayer?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer?.play()
                    }

                    
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[0] = 1;
                }
                else if on[0] == 1{
                    audioPlayer?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[0] = 0;
                    
                }
            }
        }
        if sender.tag == 2{
//            func longPressed(longPress: UIGestureRecognizer){
//                if(longPress.state == UIGestureRecognizerState.Ended){
//                    println("ended");
//                    
//                }
//                else if(longPress.state == UIGestureRecognizerState.Began){
//                    println("began")
//                }
//            }
            if filled[2] == 1 {
                if on[1] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer2 = AVAudioPlayer(contentsOfURL: url2,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer2?.numberOfLoops = -1
                    audioPlayer2?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        audioPlayer2?.play()
                    }
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[1] = 1;
                }
                else if on[1] == 1{
                    audioPlayer2?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[1] = 0
                }
            }
        }
        if sender.tag == 3{
            if filled[4] == 1 {
                if on[2] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer3 = AVAudioPlayer(contentsOfURL: url3,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer3?.numberOfLoops = -1
                    audioPlayer3?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer3?.play()
                    }

                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[2] = 1;
                }
                else if on[2] == 1{
                    audioPlayer3?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[2] = 0
                }
            }
        }
        if sender.tag == 4{
            if filled[6] == 1 {
                if on[3] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer4 = AVAudioPlayer(contentsOfURL: url4,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer4?.numberOfLoops = -1
                    audioPlayer4?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer4?.play()
                    }

                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[3] = 1;
                }
                else if on[3] == 1{
                    audioPlayer4?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[3] = 0
                }
            }
        }
        if sender.tag == 5{
            if filled[8] == 1 {
                if on[4] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer5 = AVAudioPlayer(contentsOfURL: url5,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer5?.numberOfLoops = -1
                    audioPlayer5?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer5?.play()
                    }

                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[4] = 1;
                }
                else if on[4] == 1{
                    audioPlayer5?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[4] = 0
                }
            }
        }

        if sender.tag == 6{
            if filled[10] == 1 {
                if on[5] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer6 = AVAudioPlayer(contentsOfURL: url6,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer6?.numberOfLoops = -1
                    audioPlayer6?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer6?.play()
                    }

                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[5] = 1;
                }
                else if on[5] == 1{
                    audioPlayer6?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[5] = 0
                }
            }
        }

        if sender.tag == 7{
            if filled[12] == 1 {
                if on[6] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer7 = AVAudioPlayer(contentsOfURL: url7,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer7?.numberOfLoops = -1
                    audioPlayer7?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer7?.play()
                    }

                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[6] = 1;
                }
                else if on[6] == 1{
                    audioPlayer7?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[6] = 0
                }
            }
        }

        if sender.tag == 8{
            if filled[14] == 1 {
                if on[7] == 0 {
                    var url: NSURL?
                    
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer8 = AVAudioPlayer(contentsOfURL: url8,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    
                    audioPlayer8?.numberOfLoops = -1
                    audioPlayer8?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        println("smokeey")
                        audioPlayer8?.play()
                    }

                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[7] = 1;
                }
                else if on[7] == 1{
                    audioPlayer8?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[7] = 0
                }
            }
        }

        if sender.tag == 9{
            if filled[16] == 1 {
                if on[8] == 0 {
                    var url: NSURL?
                    var error: NSError?
                    let audioSession = AVAudioSession.sharedInstance()
                    audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
                        error: &error)
                    
                    audioPlayer9 = AVAudioPlayer(contentsOfURL: url9,
                        error: &error)
                    session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                    audioPlayer9?.numberOfLoops = -1
                    audioPlayer9?.delegate = self
                    
                    if let err = error {
                        println("audioPlayer error: \(err.localizedDescription)")
                    } else {
                        audioPlayer9?.play()
                    }
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[8] = 1;
                }
                else if on[8] == 1{
                    audioPlayer9?.stop()
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[8] = 0
                }
            }
        }
        
        if sender.tag == 10 {
            stop_play()
            
            //enter code for recording
            run()
            if counter >= 17{
                button10.setTitle("STOP", forState: .Normal)
                counter = 17;
                button10.enabled = false;
                
            }
            else{
                on = [0,0,0,0,0,0,0,0,0]
                if counter % 2 == 0 {
                   audioRecorder?.record()
                   filled[counter] = 1
                }
                else if counter % 2 != 0{
                    audioRecorder?.stop()
                    if old_counter_active == true{
                       counter = old_counter - 1;
                        old_counter_active = false;
                    }
                }
                counter++

            }
            
        }
        
        //reset button
        if sender.tag == 11 {
            stop_play()
            on = [0,0,0,0,0,0,0,0,0]
            filled = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
            counter = 0
            button10.enabled = true;
            
        }
        refresh()
    }
    
    
    @IBOutlet weak var button1: MyCustomButton!
    @IBOutlet weak var button2: MyCustomButton!
    @IBOutlet weak var button3: MyCustomButton!
    @IBOutlet weak var button4: MyCustomButton!
    @IBOutlet weak var button5: MyCustomButton!
    @IBOutlet weak var button6: MyCustomButton!
    @IBOutlet weak var button7: MyCustomButton!
    @IBOutlet weak var button8: MyCustomButton!
    @IBOutlet weak var button9: MyCustomButton!
    @IBOutlet weak var button10: UIButton!
    
    func stop_play(){
        audioPlayer?.stop()
        audioPlayer2?.stop()
        audioPlayer3?.stop()
        audioPlayer4?.stop()
        audioPlayer5?.stop()
        audioPlayer6?.stop()
        audioPlayer7?.stop()
        audioPlayer8?.stop()
        audioPlayer9?.stop()
    }
    
//    func longPressed(longPress: UIGestureRecognizer){
//        if(longPress.state == UIGestureRecognizerState.Ended){
//            println("ended");
//            if longPress.tag == 1{
//                println("1");
//            }
//        }
//        else if(longPress.state == UIGestureRecognizerState.Began){
//            println("began")
//        }
//    }
    
    func refresh (){
        if filled[0] == 1 {
            button1.backgroundColor = UIColor.yellowColor()
        }
        if filled[0] == 0 {
            button1.backgroundColor = UIColor.whiteColor()
        }
        if filled[2] == 1 {
            button2.backgroundColor = UIColor.yellowColor()
        }
        if filled[2] == 0 {
            button2.backgroundColor = UIColor.whiteColor()
        }
        if filled[4] == 1 {
            button3.backgroundColor = UIColor.yellowColor()
        }
        if filled[4] == 0 {
            button3.backgroundColor = UIColor.whiteColor()
        }
        if filled[6] == 1 {
            button4.backgroundColor = UIColor.yellowColor()
        }
        if filled[6] == 0 {
            button4.backgroundColor = UIColor.whiteColor()
        }
        if filled[8] == 1 {
            button5.backgroundColor = UIColor.yellowColor()
        }
        if filled[8] == 0 {
            button5.backgroundColor = UIColor.whiteColor()
        }
        if filled[10] == 1 {
            button6.backgroundColor = UIColor.yellowColor()
        }
        if filled[10] == 0 {
            button6.backgroundColor = UIColor.whiteColor()
        }
        if filled[12] == 1 {
            button7.backgroundColor = UIColor.yellowColor()
        }
        if filled[12] == 0 {
            button7.backgroundColor = UIColor.whiteColor()
        }
        if filled[14] == 1 {
            button8.backgroundColor = UIColor.yellowColor()
        }
        if filled[14] == 0 {
            button8.backgroundColor = UIColor.whiteColor()
        }
        if filled[16] == 1 {
            button9.backgroundColor = UIColor.yellowColor()
        }
        if filled[16] == 0 {
            button9.backgroundColor = UIColor.whiteColor()
        }
        
        if on[0] == 0 {
            button1.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[1] == 0 {
            button2.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[2] == 0 {
            button3.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[3] == 0 {
            button4.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[4] == 0 {
            button5.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[5] == 0 {
            button6.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[6] == 0 {
            button7.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[7] == 0 {
            button8.layer.borderColor = UIColor.grayColor().CGColor
        }
        if on[8] == 0 {
            button9.layer.borderColor = UIColor.grayColor().CGColor
        }
        if counter % 2 != 0{
            button10.setTitle("STOP", forState: .Normal)
        }
        if counter % 2 == 0{
            button10.setTitle("RECORD", forState: .Normal)
        }
        
    }
    
    

}

