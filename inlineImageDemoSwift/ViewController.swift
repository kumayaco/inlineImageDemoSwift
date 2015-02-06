//
//  ViewController.swift
//  inlineImageDemoSwift
//
//  Created by vincent on 2015/02/06.
//  Copyright (c) 2015年 Vincent Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel(frame: CGRectMake(0, 0, CGRectGetWidth(view.bounds), CGRectGetHeight(view.bounds)))
        label?.center = view.center
        label?.textAlignment = .Center
        
        var mutableAttributedString = NSMutableAttributedString(string: "this is a smile :)")
        
        label?.attributedText = mutableAttributedString
        
        view.addSubview(label!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

