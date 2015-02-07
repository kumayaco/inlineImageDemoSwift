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
        
        var textAttachment = NSTextAttachment()
        var image = UIImage(named: "1f601.png")
        
        textAttachment.image = imageWithImage(UIImage(named: "1f601.png"), scaledToSize: CGSizeMake(17, 16))
        
        var iconAttributedString = NSAttributedString(attachment: textAttachment)
        
        mutableAttributedString.replaceCharactersInRange(NSMakeRange(16, 2), withAttributedString: iconAttributedString)
        
        label?.attributedText = mutableAttributedString
        
        view.addSubview(label!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func imageWithImage(image: UIImage?, scaledToSize: CGSize) -> UIImage? {
        
        var newImage: UIImage?
        
        UIGraphicsBeginImageContextWithOptions(scaledToSize, false, 0.0)
        image?.drawInRect(CGRectMake(0, 0, scaledToSize.width, scaledToSize.height))
        newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
}

