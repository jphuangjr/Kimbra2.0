//
//  ViewController.swift
//  Kimbra2.0
//
//  Created by Joshua Huang on 5/25/15.
//  Copyright (c) 2015 Joshua Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var on = [0,0,0,0,0,0,0,0,0]
    var filled = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var counter = 0;
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttons(sender: UIButton) {
        if sender.tag == 1{
            if filled[0] == 1 {
                if on[0] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[0] = 1;
                }
                else if on[0] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[0] = 0;
                }
            }
        }
        if sender.tag == 2{
            if filled[2] == 1 {
                if on[1] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[1] = 1;
                }
                else if on[1] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[1] = 0
                }
            }
        }
        if sender.tag == 3{
            if filled[4] == 1 {
                if on[2] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[2] = 1;
                }
                else if on[2] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[2] = 0
                }
            }
        }
        if sender.tag == 4{
            if filled[8] == 1 {
                if on[3] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[3] = 1;
                }
                else if on[3] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[3] = 0
                }
            }
        }
        if sender.tag == 5{
            if filled[10] == 1 {
                if on[4] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[4] = 1;
                }
                else if on[4] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[4] = 0
                }
            }
        }

        if sender.tag == 6{
            if filled[12] == 1 {
                if on[5] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[5] = 1;
                }
                else if on[5] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[5] = 0
                }
            }
        }

        if sender.tag == 7{
            if filled[14] == 1 {
                if on[6] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[6] = 1;
                }
                else if on[6] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[6] = 0
                }
            }
        }

        if sender.tag == 8{
            if filled[16] == 1 {
                if on[7] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[7] = 1;
                }
                else if on[7] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[7] = 0
                }
            }
        }

        if sender.tag == 9{
            if filled[18] == 1 {
                if on[8] == 0 {
                    sender.layer.borderColor = UIColor.greenColor().CGColor
                    on[8] = 1;
                }
                else if on[8] == 1{
                    sender.layer.borderColor = UIColor.grayColor().CGColor
                    on[8] = 0
                }
            }
        }
        
        if sender.tag == 10 {
            //enter code for recording
            if counter >= 19{
                
            }
            else{
                on = [0,0,0,0,0,0,0,0,0]
                if counter % 2 == 0 {
                   filled[counter] = 1
                }
                counter++

            }
            
        }
        
        //reset button
        if sender.tag == 11 {
            on = [0,0,0,0,0,0,0,0,0]
            filled = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
            counter = 0
            
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

