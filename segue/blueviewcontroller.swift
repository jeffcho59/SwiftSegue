//
//  blueviewcontroller.swift
//  segue
//
//  Created by Jeffrey Cho on 11/11/15.
//  Copyright © 2015 personal. All rights reserved.
//

import UIKit

class blueviewcontroller: UIViewController {

    
    @IBOutlet weak var mainLbl: UILabel!
    
    var transferText = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mainLbl.text = transferText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
