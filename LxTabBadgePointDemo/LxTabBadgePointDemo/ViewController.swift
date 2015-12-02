//
//  ViewController.swift
//  LxTabBadgePointDemo
//
//  Created by DeveloperLx on 15/12/1.
//  Copyright © 2015年 DeveloperLx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/CGFloat(256.0), green: CGFloat(arc4random()%256)/CGFloat(256.0), blue: CGFloat(arc4random()%256)/CGFloat(256.0), alpha: 1)
        
        let handleTabPointButton = UIButton(type: .Custom)
        handleTabPointButton.showsTouchWhenHighlighted = true
        handleTabPointButton.titleLabel?.font = UIFont.systemFontOfSize(20)
        handleTabPointButton.backgroundColor = UIColor.whiteColor()
        handleTabPointButton.setTitle("显示红点", forState: .Normal)
        handleTabPointButton.setTitle("隐藏红点", forState: .Selected)
        handleTabPointButton.setTitleColor(view.backgroundColor, forState: .Normal)
        handleTabPointButton.addTarget(self, action: Selector("handleTabPointButtonClicked:"), forControlEvents: .TouchUpInside)
        view.addSubview(handleTabPointButton)
        
        handleTabPointButton.translatesAutoresizingMaskIntoConstraints = false
        
        let handleTabPointButtonCenterXConstraint = NSLayoutConstraint(item: handleTabPointButton, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0)
        let handleTabPointButtonCenterYConstraint = NSLayoutConstraint(item: handleTabPointButton, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0)
        let handleTabPointButtonWidthConstraint = NSLayoutConstraint(item: handleTabPointButton, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1, constant: 120)
        let handleTabPointButtonHeightConstraint = NSLayoutConstraint(item: handleTabPointButton, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 1, constant: 60)
        
        view.addConstraints([handleTabPointButtonCenterXConstraint,
            handleTabPointButtonCenterYConstraint,
            handleTabPointButtonWidthConstraint,
            handleTabPointButtonHeightConstraint])
    }

    func handleTabPointButtonClicked(btn: UIButton) {
    
        if let nc = navigationController {
        
            nc.showTabBadgePoint = !nc.showTabBadgePoint
            btn.selected = nc.showTabBadgePoint
        }
    }
}

