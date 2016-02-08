//
//  ViewController.swift
//  pruebaBack
//
//  Created by guitarrkurt on 08/02/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindToRed(segue: UIStoryboardSegue) {
        if let yellowViewController = segue.sourceViewController as? YellowViewController {
            for index in yellowViewController.array{
                    print(index)
            }
        }
    }

}

