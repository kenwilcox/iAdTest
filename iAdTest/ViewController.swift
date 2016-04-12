//
//  ViewController.swift
//  iAdTest
//
//  Created by Kenneth Wilcox on 4/12/16.
//  Copyright © 2016 Kenneth Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(appDelegate.bannerView)
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[bannerView]|", options: [], metrics: nil, views: appDelegate.viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[bannerView]|", options: [], metrics: nil, views: appDelegate.viewsDictionary))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        appDelegate.bannerView.hidden = false
    }

}
