//
//  AutolayoutExamplesTests.swift
//  AutolayoutExamplesTests
//
//  Created by Pham Chi Cong on 6/16/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import XCTest

class AutolayoutExamplesTests: XCTestCase {
    let storyboard: UIStoryboard = UIStoryboard.init(name: "Main", bundle: NSBundle.init(identifier: "congpc.ios.AutolayoutExamples"))
    let minPinLabelTag = 101
    let maxPinLabelTag = 109
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //MARK: - Helpers
    func createPinLabelRect(tag:Int) -> CGRect {
        //Check with iPhone 4s and iPhone 6
        
        if Device.IS_5_5_INCHES() == true {
            switch tag {
            case 102:
                //Right top
                return CGRectMake(321.33333333333326, 40, 72.666666666666686, 20)
            case 103:
                //Right bottom
                return CGRectMake(292.66666666666674, 696, 101.33333333333331, 20)
            case 104:
                //Left bottom
                return CGRectMake(19.999999999999993, 696.0, 90.333333333333329, 20)
            case 105:
                //Left CenterY
                return CGRectMake(20, 358, 96, 20)
            case 106:
                //CenterX Top
                return CGRectMake(160, 40, 94, 20)
            case 107:
                //Right CenterY
                return CGRectMake(287, 358, 107, 20)
            case 108:
                //CenterX Bottom
                return CGRectMake(145.66666666666669, 696, 122.66666666666666, 20)
            case 109:
                //Center
                return CGRectMake(181.33333333333334, 358, 51.333333333333314, 20)
            default:
                //Left top
                //20 40; 61.6667 20
                return CGRectMake(20, 40, 61.666666666666671, 20)
            }
        }
        else if Device.IS_4_7_INCHES() == true {
            switch tag {
            case 102:
                //Right top
                return CGRectMake(286.5, 36, 72.5, 20)
            case 103:
                //Right bottom
                return CGRectMake(257.5, 631, 101.5, 20)
            case 104:
                //Left bottom
                return CGRectMake(16, 631, 90.5, 20)
            case 105:
                //Left CenterY
                return CGRectMake(16, 323.5, 96, 20)
            case 106:
                //CenterX Top
                return CGRectMake(140.5, 36, 94, 20)
            case 107:
                //Right CenterY
                return CGRectMake(252, 323.5, 107, 20)
            case 108:
                //CenterX Bottom
                return CGRectMake(126.5, 631, 122.5, 20)
            case 109:
                //Center
                return CGRectMake(162, 323.5, 51.5, 20)
            default:
                //Left top
                return CGRectMake(16, 36, 61.5, 20)
            }
        }
        else if Device.IS_4_INCHES() == true {
            //iPhone 4 inch
            switch tag {
            case 102:
                //Right top
                return CGRectMake(231.5, 36, 72.5, 20)
            case 103:
                //Right bottom
                return CGRectMake(202.5, 532, 101.5, 20)
            case 104:
                //Left bottom
                return CGRectMake(16, 532, 90.5, 20)
            case 105:
                //Left CenterY
                return CGRectMake(16, 274, 96, 20)
            case 106:
                //CenterX Top
                return CGRectMake(113, 36, 94, 20)
            case 107:
                //Right CenterY
                return CGRectMake(197, 274, 107, 20)
            case 108:
                //CenterX Bottom
                return CGRectMake(99, 532, 122.5, 20)
            case 109:
                //Center
                return CGRectMake(134.5, 274, 51.5, 20)
            default:
                //Left top
                return CGRectMake(16, 36, 61.5, 20)
            }
        }
        else {
            //iPhone 3.5 inch
            switch tag {
            case 102:
                //Right top
                return CGRectMake(231.5, 36, 72.5, 20)
            case 103:
                //Right bottom
                return CGRectMake(202.5, 444.0, 101.5, 20.0)
            case 104:
                //Left bottom
                return CGRectMake(16.0, 444.0, 90.5, 20.0)
            case 105:
                //Left CenterY
                return CGRectMake(16.0, 230.0, 96.0, 20.0)
            case 106:
                //CenterX Top
                return CGRectMake(113, 36, 94, 20)
            case 107:
                //Right CenterY
                return CGRectMake(197.0, 230.0, 107.0, 20.0)
            case 108:
                //CenterX Bottom
                return CGRectMake(99.0, 444.0, 122.5, 20.0)
            case 109:
                //Center
                return CGRectMake(134.5, 230.0, 51.5, 20.0)
            default:
                //Left top
                return CGRectMake(16, 36, 61.5, 20)
            }
        }
    }
    
    func testAutolayout_Pin_Storyboard() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("pinViewController1")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minPinLabelTag...maxPinLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createPinLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "[\(i) tag] Label '\(subView)' is wrong position")
        }
    }
    
    func testAutolayout_Pin_LayoutConstraint() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("pinViewController2")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minPinLabelTag...maxPinLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createPinLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    func testAutolayout_Pin_VisualFormatLanguage() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("pinViewController3")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minPinLabelTag...maxPinLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createPinLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    func testAutolayout_Pin_LayoutAnchor() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("pinViewController4")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minPinLabelTag...maxPinLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createPinLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
}
