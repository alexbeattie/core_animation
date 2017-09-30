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

    override func viewDidLoad() {
        super.viewDidLoad()

        //let zoomImageView = UIView()
        zoomImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        zoomImageView.backgroundColor = UIColor.red
        zoomImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        view.addSubview(zoomImageView)
    }

    @objc func animate() {
        UIView.animate(withDuration: 0.75) {
                self.zoomImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 100)
        }
    }
}

