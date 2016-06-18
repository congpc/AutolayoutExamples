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
            //16 339.5; 96 20
            return CGRectMake(16, 323.5, 96, 20)
        case 106:
            //CenterX Top
            return CGRectMake(140.5, 36, 94, 20)
        case 107:
            //Right CenterY
            //251 339.5; 108 20.5
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
    
    func verifyComponents(component1: UIView!, _ component2: UIView!) -> Bool {
        var result = false
        if (component1.frame.origin.x == component2.frame.origin.x) &&
            (component1.frame.origin.y == component2.frame.origin.y) &&
            (component1.frame.size.width == component2.frame.size.width) &&
            (component1.frame.size.height == component2.frame.size.height) {
            result = true
        }
        return result
    }
    
    func testAutolayout_Pin_Storyboard() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("pinViewController1")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minPinLabelTag...maxPinLabelTag {
            let subView = viewController.view.viewWithTag(i)
//            print("PinStoryboard:\(subView)")
            
            let result = CGRectEqualToRect((subView?.frame)!, self.createPinLabelRect((subView?.tag)!))
            XCTAssertTrue(result, "[\(i) tag] Label '\(subView)' is wrong position")
        }
    }
    
    func testAutolayout_Pin_LayoutConstraint() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("pinViewController2")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minPinLabelTag...maxPinLabelTag {
            let subView = viewController.view.viewWithTag(i)
//            print("PinLayoutConstraint:\(subView)")
            
            let result = CGRectEqualToRect((subView?.frame)!, self.createPinLabelRect((subView?.tag)!))
            XCTAssertTrue(result, "[\(i) tag] Label '\(subView)' is wrong position")
        }
    }
    
    func testAutolayout_Pin_VisualFormatLanguage() {
        let viewController1 = storyboard.instantiateViewControllerWithIdentifier("pinViewController1")
        viewController1.viewDidLoad()
        viewController1.view.layoutIfNeeded()
        
        let viewController2 = storyboard.instantiateViewControllerWithIdentifier("pinViewController2")
        print(viewController2)
//        viewController2.configConstaintType(1)
        viewController2.viewDidLoad()
        viewController2.view.layoutIfNeeded()
        for i in 101...109 {
            let subView1 = viewController1.view.viewWithTag(i)
            let subView2 = viewController2.view.viewWithTag(i)
            let result = self.verifyComponents(subView1, subView2)
            XCTAssertTrue(result, "[\(i) tag] Label '\(subView1)' and '\(subView2)' are wrong position")
        }
    }
    
    func testAutolayout_Pin_NSLayoutAnchor() {
        let viewController1 = storyboard.instantiateViewControllerWithIdentifier("pinViewController1")
        viewController1.viewDidLoad()
        viewController1.view.layoutIfNeeded()
        
        let viewController2 = storyboard.instantiateViewControllerWithIdentifier("pinViewController2")
        viewController2.viewDidLoad()
        viewController2.view.layoutIfNeeded()
        for i in 101...109 {
            let subView1 = viewController1.view.viewWithTag(i)
            let subView2 = viewController2.view.viewWithTag(i)
            let result = self.verifyComponents(subView1, subView2)
            XCTAssertTrue(result, "[\(i) tag] Label '\(subView1)' and '\(subView2)' are wrong position")
        }
    }
}
