//
//  ViewController.swift
//  segue
//
//  Created by Jeffrey Cho on 11/11/15.
//  Copyright © 2015 personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //use SENDER to pass data
    @IBAction func loadBlue(sender: AnyObject!) {
        let str = "we just came from yellow screen"
        performSegueWithIdentifier("goToBlue", sender: str)
    }
    
    @IBAction func loadRed(sender: AnyObject!) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //this is when you do work right before the view loads
        //keep in mind - the next View controller has already been initialized
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? blueviewcontroller {
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
                
            }
        }
    }
}

