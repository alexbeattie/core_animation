//
//  ViewController.swift
//  core_animation
//
//  Created by Alex Beattie on 9/30/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let zoomImageView = UIView()
    let startingFrame = CGRect(x: 0, y: 0, width: 200, height: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //let zoomImageView = UIView()
        zoomImageView.frame = startingFrame
        zoomImageView.backgroundColor = UIColor.red
        zoomImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        view.addSubview(zoomImageView)
    }

    @objc func animate() {
        UIView.animate(withDuration: 0.75) {
                //proportionately size animation's width
                let height = (self.view.frame.width / self.startingFrame.width) * self.startingFrame.height
            
                // bring to center of screen
                let y = (self.view.frame.height / 2) - (height / 2)
            
            
                self.zoomImageView.frame = CGRect(x: 0, y: y, width: self.view.frame.width, height: height)
        }
    }
}

