//
//  MemeTableViewController.swift
//  MakeAMeme
//
//  Created by Aaron Phillips on 5/3/16.
//  Copyright © 2016 Aaron Phillips. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController {
    
    var memes = [Meme]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
    
    // Get number of rows in array
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeTableCell")! as UITableViewCell
        let meme = memes[indexPath.row]

        cell.textLabel?.text = meme.topTextField! + " ... " + meme.bottomTextField!
        cell.imageView?.image = meme.memedImage
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailController = storyboard?.instantiateViewControllerWithIdentifier("MemeDetailViewController") as! MemeDetailViewController
        let meme = memes[indexPath.row]
        
        detailController.meme = meme
        detailController.memeIndex = indexPath.row
        
        navigationController?.pushViewController(detailController, animated: true)
    }
}
