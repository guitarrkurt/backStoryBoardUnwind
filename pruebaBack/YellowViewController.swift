//
//  YellowViewController.swift
//  pruebaBack
//
//  Created by guitarrkurt on 08/02/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var array = ["hola 🔵", "juan 🌮", "pepe 🆗", "love ❤️", "vaca 🐮", "gato 😼", "algo 🌲", "pintar 🎨", "apple 🍎"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.setEditing(true, animated: false)
        tableView.allowsMultipleSelectionDuringEditing = true
        // Do any additional setup after loading the view.
    }
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return array.count
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        cell.textLabel?.text = array[indexPath.row]
    
        return cell
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
