//
//  ViewController.swift
//  iAdTest
//
//  Created by Kenneth Wilcox on 4/12/16.
//  Copyright © 2016 Kenneth Wilcox. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController {
    
    var bannerView: ADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bannerView = ADBannerView(adType: .Banner)
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        bannerView.delegate = self
        bannerView.hidden = true
        view.addSubview(bannerView)
        
        let viewsDictionary = ["bannerView": bannerView]
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[bannerView]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[bannerView]|", options: [], metrics: nil, views: viewsDictionary))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: ADBannerViewDelegate {
    // if you're using a table view, a scroll view, a collection view, a text view or something else that scrolls,
    // you should set its contentInset and scrollIndicatorInset properties so that it doesn't scroll under 
    // the bannerView when it's visible
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        bannerView.hidden = false
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        bannerView.hidden = true
    }
}