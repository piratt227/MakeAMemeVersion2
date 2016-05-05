//
//  MemeDetailViewController.swift
//  MakeAMeme
//
//  Created by Aaron Phillips on 5/5/16.
//  Copyright © 2016 Aaron Phillips. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme!
    var memeIndex: Int!
    
    @IBOutlet weak var memeImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        memeImage.image = meme.memedImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
