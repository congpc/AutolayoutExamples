//
//  ATLBaseViewController.swift
//  AutolayoutExamples
//
//  Created by Pham Chi Cong on 6/11/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import UIKit

class ATLBaseViewController: UIViewController {
    //0: Using NSLayoutConstraint, 1: Using VisualFormatLanguage, 2: Using NSLayoutAnchor (iOS 9)
    var constaintType: Int8 = 2
    
    var isIOS9: Bool = false
    let metrics = ["margin":16.0] // Default left margin and right margin = 16 or 20 px
    var margin:CGFloat = 16.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 9.0, *) {
            self.isIOS9 = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createLabel(text: String,_ tag:Int,_ color:UIColor) -> UILabel {
        //Create label
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = color
        label.tag = tag
        return label
    }
    
    //MARK: - ViewController 1
    func configLeftTopConstraints(view:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["view": view,"topLayoutGuide": topLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[view]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-margin-[view]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                view.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20.0).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
            
        }
    }
    
    func configRightTopConstraints(view:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["view": view,"topLayoutGuide": topLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[view]-margin-|",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-margin-[view]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                view.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: margin).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configRightBottomConstraints(view:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["view": view,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[view]-margin-|",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[view]-margin-[bottomLayoutGuide]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                let topLayoutGuide = self.bottomLayoutGuide
                topLayoutGuide.topAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: margin).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: view,
                               attribute: .Bottom, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configLeftBottomConstraints(view:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["view": view,"bottomLayoutGuide": bottomLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[view]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[view]-margin-[bottomLayoutGuide]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let bottomLayoutGuide = self.bottomLayoutGuide
                bottomLayoutGuide.topAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: margin).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: view,
                               attribute: .Bottom, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configLeftCenterYConstraints(view:AnyObject) {
        switch constaintType {
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                view.centerYAnchor.constraintEqualToAnchor(margins.centerYAnchor).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .CenterY, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterY, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configCenterXTopConstraints(view:AnyObject) {
        switch constaintType {
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.centerXAnchor.constraintEqualToAnchor(margins.centerXAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                view.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: margins.layoutFrame.size.width).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .CenterX, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configRightCenterYConstraints(view:AnyObject) {
        switch constaintType {
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                
                view.centerYAnchor.constraintEqualToAnchor(margins.centerYAnchor).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .CenterY, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterY, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configCenterXBottomConstraints(view:AnyObject) {
        switch constaintType {
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.centerXAnchor.constraintEqualToAnchor(margins.centerXAnchor).active = true
                
                let bottomLayoutGuide = self.bottomLayoutGuide
                bottomLayoutGuide.topAnchor.constraintEqualToAnchor(view.bottomAnchor,constant: margin).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .CenterX, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: self.bottomLayoutGuide, attribute: .Top, relatedBy: .Equal, toItem: view,
                               attribute: .Bottom, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    func configCenterConstraints(view:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
//            let views : [String : AnyObject] = ["superview": self.view, "view": view]
//            var allConstraints = [NSLayoutConstraint]()
//            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[superview]-(<=0)-[view]",
//                                                                             options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: views)
//            allConstraints += constraint1
//            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[superview]-(<=0)-[view]",
//                                                                             options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views)
//            allConstraints += constraint2
//            NSLayoutConstraint.activateConstraints(allConstraints)
            
            //Way 2:Using Left view and Top view
            let views : [String : AnyObject] = ["left": self.view.viewWithTag(105)!,"top": self.view.viewWithTag(106)!, "view": view]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[view]-(<=0)-[left]",
                                                                             options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[view]-(<=0)-[top]",
                                                                             options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
            
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.centerXAnchor.constraintEqualToAnchor(margins.centerXAnchor).active = true
                
                view.centerYAnchor.constraintEqualToAnchor(margins.centerYAnchor).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .CenterX, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .CenterY, relatedBy: .Equal, toItem: self.view,
                               attribute: .CenterY, multiplier: 1.0, constant: margin).active = true
        }
    }
    
    //MARK: - ViewController 2
    func config1LeftTopConstraints(view:AnyObject,_ equalHeight:CGFloat) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["view": view,"topLayoutGuide": topLayoutGuide]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[view]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-margin-[view(\(equalHeight))]",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                view.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                
                let topLayoutGuide = self.topLayoutGuide
                view.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: margin).active = true
                
                //Fix Height
                view.heightAnchor.constraintEqualToAnchor(nil, constant: equalHeight).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: self.view,
                               attribute: .LeadingMargin, multiplier: 1.0, constant: 0).active = true
            
            NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide,
                               attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
            
            //Fix Height
            NSLayoutConstraint(item: view, attribute: .Height, relatedBy: .Equal, toItem: nil,
                               attribute: .NotAnAttribute, multiplier: 1.0, constant: equalHeight).active = true
        }
    }
    
    func config2TopEdgesAndLessThanConstraints(firstView:AnyObject, _ secondView:AnyObject, _ lessWidth:CGFloat) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["firstView": firstView,"secondView": secondView]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[firstView]-(<=\(lessWidth))-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllTop, metrics: nil, views: views)
            allConstraints += constraint1
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                firstView.topAnchor.constraintEqualToAnchor(secondView.topAnchor).active = true
                
                let constraint2 =  firstView.trailingAnchor.constraintLessThanOrEqualToAnchor(secondView.leadingAnchor, constant: lessWidth)
                constraint2.priority = 250
                constraint2.active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: firstView, attribute: .Top, relatedBy: .Equal, toItem: secondView,
                               attribute: .Top, multiplier: 1.0, constant: 0).active = true
            
            let constraint2 = NSLayoutConstraint(item: firstView, attribute: .Trailing, relatedBy: .LessThanOrEqual, toItem: secondView,
                               attribute: .Leading, multiplier: 1.0, constant: lessWidth)
            constraint2.priority = 250
            constraint2.active = true
        }
    }
    
    func config3LeadingAndTrailingConstraints(firstView:AnyObject, _ secondView:AnyObject, _ thirdView:AnyObject, _ equalHeight:CGFloat) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["firstView": firstView,"secondView": secondView,"thirdView": thirdView]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("V:[firstView]-(\(equalHeight))-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: views)
            allConstraints += constraint1

            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[thirdView]-(>=\(equalHeight))-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllTrailing, metrics: nil, views: views)
            allConstraints += constraint2
            
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                firstView.leadingAnchor.constraintEqualToAnchor(secondView.leadingAnchor).active = true
                secondView.trailingAnchor.constraintEqualToAnchor(thirdView.trailingAnchor).active = true
                secondView.topAnchor.constraintEqualToAnchor(firstView.bottomAnchor, constant: equalHeight).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: firstView, attribute: .Leading, relatedBy: .Equal, toItem: secondView,
                               attribute: .Leading, multiplier: 1.0, constant: 0).active = true
            NSLayoutConstraint(item: secondView, attribute: .Trailing, relatedBy: .Equal, toItem: thirdView,
                               attribute: .Trailing, multiplier: 1.0, constant: 0).active = true
            //Vertical
            NSLayoutConstraint(item: secondView, attribute: .Top, relatedBy: .Equal, toItem: firstView,
                               attribute: .Bottom, multiplier: 1.0, constant: equalHeight).active = true
            
            
        }
    }
    
    func config4BottomEdgesConstraints(firstView:AnyObject, _ secondView:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["firstView": firstView,"secondView": secondView]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[firstView]-(>=10)-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllBottom, metrics: nil, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("H:[secondView]-margin-|",
                                                                             options: [], metrics: metrics, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                let margins = self.view.layoutMarginsGuide
                secondView.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
                firstView.bottomAnchor.constraintEqualToAnchor(secondView.bottomAnchor).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: secondView, attribute: .Trailing, relatedBy: .Equal, toItem: self.view,
                               attribute: .TrailingMargin, multiplier: 1.0, constant: 0).active = true
            NSLayoutConstraint(item: firstView, attribute: .Bottom, relatedBy: .Equal, toItem: secondView,
                               attribute: .Bottom, multiplier: 1.0, constant: 0).active = true
        }
    }
    
    func config5CenterXConstraints(firstView:AnyObject, _ equalHeight:CGFloat, _ padding:CGFloat, _ secondView:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["firstView": firstView, "secondView": secondView]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("V:[secondView]-(<=\(padding))-[firstView(\(equalHeight))]",
                                                                             options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views)
            allConstraints += constraint1
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                firstView.topAnchor.constraintEqualToAnchor(secondView.bottomAnchor,constant: padding).active = true
                firstView.centerXAnchor.constraintEqualToAnchor(secondView.centerXAnchor).active = true
                firstView.heightAnchor.constraintEqualToAnchor(nil, constant: equalHeight).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: firstView, attribute: .Top, relatedBy: .Equal, toItem: secondView,
                               attribute: .Bottom, multiplier: 1.0, constant: padding).active = true
            NSLayoutConstraint(item: firstView, attribute: .CenterX, relatedBy: .Equal, toItem: secondView,
                               attribute: .CenterX, multiplier: 1.0, constant: 0).active = true
            
            //Fix Height
            NSLayoutConstraint(item: firstView, attribute: .Height, relatedBy: .Equal, toItem: nil,
                               attribute: .NotAnAttribute, multiplier: 1.0, constant: equalHeight).active = true
        }
    }
    
    func config6CenterYConstraints(firstView:AnyObject, _ secondView:AnyObject, _ thirdView:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["firstView": firstView, "secondView": secondView, "thirdView":thirdView]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[firstView]-(>=10)-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[thirdView]-(>=10)-[firstView]",
                                                                             options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                firstView.centerYAnchor.constraintEqualToAnchor(secondView.centerYAnchor).active = true
                thirdView.leadingAnchor.constraintEqualToAnchor(firstView.leadingAnchor, constant: 10).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: firstView, attribute: .CenterY, relatedBy: .Equal, toItem: secondView,
                               attribute: .CenterY, multiplier: 1.0, constant: 0).active = true
            NSLayoutConstraint(item: thirdView, attribute: .Leading, relatedBy: .Equal, toItem: firstView,
                               attribute: .Leading, multiplier: 1.0, constant: 10).active = true
        }
    }
    
    func config7BaselineConstraints(firstView:AnyObject, _ secondView:AnyObject, _ thirdView:AnyObject) {
        switch constaintType {
        case 1:
            // Creating constraints using Visual Format Language: from iOS 6.0
            let views : [String : AnyObject] = ["firstView": firstView,"secondView": secondView,"thirdView":thirdView]
            var allConstraints = [NSLayoutConstraint]()
            let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("H:[firstView]-(>=10)-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: views)
            allConstraints += constraint1
            let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[thirdView(>=0@500)]-(>=10)-[secondView]",
                                                                             options: NSLayoutFormatOptions.AlignAllTrailing, metrics: nil, views: views)
            allConstraints += constraint2
            NSLayoutConstraint.activateConstraints(allConstraints)
        case 2 where self.isIOS9 == true:
            if #available(iOS 9.0, *) {
                // Creating the same constraints using Layout Anchors: from iOS 9.0
                firstView.lastBaselineAnchor.constraintEqualToAnchor(secondView.lastBaselineAnchor).active = true
                secondView.trailingAnchor.constraintEqualToAnchor(thirdView.trailingAnchor).active = true
            }
        default:
            // Creating constraints using NSLayoutConstraint: from iOS 6.0
            NSLayoutConstraint(item: firstView, attribute: .Baseline, relatedBy: .Equal, toItem: secondView,
                               attribute: .Baseline, multiplier: 1.0, constant: 0).active = true
            NSLayoutConstraint(item: secondView, attribute: .Trailing, relatedBy: .Equal, toItem: thirdView,
                               attribute: .Trailing, multiplier: 1.0, constant: 0).active = true
        }
    }
}
