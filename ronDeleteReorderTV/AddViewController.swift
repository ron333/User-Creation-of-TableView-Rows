//
//  AddViewController.swift
//  ronUserCreateRowsTV
//
//  Created by Ronald Mourant on 5/28/15.
//  Copyright (c) 2015 Ron Mourant. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var player:Player!

    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var playerPosition: UITextField!
    
    @IBAction func forwardBut(sender: UIButton) {
        playerPosition.text = sender.titleLabel?.text
    }
    
    @IBAction func centerBut(sender: UIButton) {
        playerPosition.text = sender.titleLabel?.text
    }
    
    @IBAction func guardBut(sender: UIButton) {
        playerPosition.text = sender.titleLabel?.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayer" {
            player = Player(name: playerName.text, position:playerPosition.text)
        }
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
