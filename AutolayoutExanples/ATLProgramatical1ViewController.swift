//
//  ATLProgramatical1ViewController.swift
//  AutolayoutExanples
//
//  Created by Pham Chi Cong on 6/5/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import UIKit

class ATLProgramatical1ViewController: UIViewController {
    //0: Using NSLayoutConstraint, 1: Using VisualFormatLanguage, 2: Using NSLayoutAnchor (iOS 9)
    var constaintType = 1
    var isIOS9 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 9.0, *) {
            self.isIOS9 = true
        }
        // Default left margin and right margin = 20 px
        self.createLeftTopLabel()
        self.createLeftBottomLabel()
        self.createLeftCenterYLabel()
        self.createCenterXTopLabel()
        self.createRightTopLabel()
        self.createRightBottomLabel()
        self.createRightCenterYLabel()
        self.createCenterXBottomLabel()
        self.createCenterLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createLeftTopLabel() {
        //Create label
        let label = UILabel()
        label.text = "Left Top"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: label, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                label.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"topLayoutGuide": topLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    func createLeftBottomLabel() {
        //Create label
        let label = UILabel()
        label.text = "Left Bottom"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: label,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let bottomLayoutGuide = self.bottomLayoutGuide
                bottomLayoutGuide.topAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[label]-padding-[bottomLayoutGuide]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    func createLeftCenterYLabel() {
        //Create label
        let label = UILabel()
        label.text = "Left CenterY"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterY, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let bottomLayoutGuide = self.bottomLayoutGuide
                bottomLayoutGuide.topAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[label]-|",
                                                                             options: .AlignAllCenterY, metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    func createCenterXTopLabel() {
        //Create label
        let label = UILabel()
        label.text = "CenterX Top"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: label, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                label.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"topLayoutGuide": topLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    
    func createRightTopLabel() {
        //Create label
        let label = UILabel()
        label.text = "Right Top"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: label, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                label.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"topLayoutGuide": topLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[label]-padding-|",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    func createRightBottomLabel() {
        //Create label
        let label = UILabel()
        label.text = "Right Bottom"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: label,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                let topLayoutGuide = self.bottomLayoutGuide
                topLayoutGuide.topAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[label]-padding-|",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[label]-padding-[bottomLayoutGuide]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    func createRightCenterYLabel() {
        //Create label
        let label = UILabel()
        label.text = "Right CenterY"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterY, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let bottomLayoutGuide = self.bottomLayoutGuide
                bottomLayoutGuide.topAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-padding-[label]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[label]-padding-[bottomLayoutGuide]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    func createCenterXBottomLabel() {
        //Create label
        let label = UILabel()
        label.text = "CenterX Bottom"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: label,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                let topLayoutGuide = self.bottomLayoutGuide
                topLayoutGuide.topAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[label]-padding-|",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[label]-padding-[bottomLayoutGuide]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
    
    func createCenterLabel() {
        //Create label
        let label = UILabel()
        label.text = "Center"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(label)
        
        //Config constraints
        switch constaintType {
        case 0:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterY, multiplier: 1.0, constant: 20.0).active = true
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = view.layoutMarginsGuide
                label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                let topLayoutGuide = self.bottomLayoutGuide
                topLayoutGuide.topAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let metrics = ["padding":20.0]
            let views : [String : AnyObject] = ["label": label,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("|-[label]-|",
                                                                             options: [.AlignAllCenterX, .AlignAllCenterY], metrics: metrics, views: views)
            allConstraints += constraint1
            NSLayoutConstraint.activateConstraints(allConstraints)
        }
    }
}

