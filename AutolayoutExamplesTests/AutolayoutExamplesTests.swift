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
    
    let minAlignmentLabelTag = 101
    let maxAlignmentLabelTag = 107
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //MARK: - Helpers
    func createPinLabelRect(tag:Int) -> CGRect {
        if Device.IS_12_9_INCHES() == true {
            //12.9 inch
            switch tag {
            case 102:
                //Right top
                return CGRectMake(931.5, 40.0, 72.5, 20.0)
            case 103:
                //Right bottom
                return CGRectMake(902.5, 1326.0, 101.5, 20.0)
            case 104:
                //Left bottom
                return CGRectMake(20.0, 1326.0, 90.5, 20.0)
            case 105:
                //Left CenterY
                return CGRectMake(20.0, 673.0, 96.0, 20.0)
            case 106:
                //CenterX Top
                return CGRectMake(465.0, 40.0, 94.0, 20.0)
            case 107:
                //Right CenterY
                return CGRectMake(897.0, 673.0, 107.0, 20.0)
            case 108:
                //CenterX Bottom
                return CGRectMake(451.0, 1326.0, 122.5, 20.0)
            case 109:
                //Center
                return CGRectMake(486.5, 673.0, 51.5, 20.0)
            default:
                //Left top
                return CGRectMake(20.0, 40.0, 61.5, 20.0)
            }
        }
        else if Device.isPad() == true {
            //7.9 inch or 9.7 inch
            switch tag {
            case 102:
                //Right top
                return CGRectMake(675.0, 40.0, 73.0, 20.0)
            case 103:
                //Right bottom
                return CGRectMake(646.0, 984.0, 102.0, 20.0)
            case 104:
                //Left bottom
                return CGRectMake(20.0, 984.0, 91.0, 20.0)
            case 105:
                //Left CenterY
                return CGRectMake(20.0, 502.0, 96.0, 20.0)
            case 106:
                //CenterX Top
                return CGRectMake(337.0, 40.0, 94.0, 20.0)
            case 107:
                //Right CenterY
                return CGRectMake(641.0, 502.0, 107.0, 20.0)
            case 108:
                //CenterX Bottom
                return CGRectMake(323.0, 984.0, 123.0, 20.0)
            case 109:
                //Center
                return CGRectMake(358.0, 502.0, 52.0, 20.0)
            default:
                //Left top
                return CGRectMake(20.0, 40.0, 62.0, 20.0)
            }
        }
        else if Device.IS_5_5_INCHES() == true {
            //5.5 inch
            switch tag {
            case 102:
                //Right top
                return CGRectMake(321.33333333333326, 36.0, 72.666666666666686, 20)
            case 103:
                //Right bottom
                return CGRectMake(292.66666666666674, 700.0, 101.33333333333331, 20)
            case 104:
                //Left bottom
                return CGRectMake(19.999999999999993, 700.0, 90.333333333333329, 20)
            case 105:
                //Left CenterY
                return CGRectMake(20, 358, 96, 20)
            case 106:
                //CenterX Top
                return CGRectMake(160, 36.0, 94, 20)
            case 107:
                //Right CenterY
                return CGRectMake(287, 358, 107, 20)
            case 108:
                //CenterX Bottom
                return CGRectMake(145.66666666666669, 700.0, 122.66666666666666, 20)
            case 109:
                //Center
                return CGRectMake(181.33333333333334, 358, 51.333333333333314, 20)
            default:
                //Left top
                return CGRectMake(20, 36.0, 61.666666666666671, 20)
            }
        }
        else if Device.IS_4_7_INCHES() == true {
            //4.7 inch
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
    
    func createAlignmentLabelRect(tag:Int) -> CGRect {
        if Device.IS_12_9_INCHES() == true {
            //12.9 inch
            switch tag {
            case 102:
                //2:Top Edges
                return CGRectMake(126.5, 40.0, 94.5, 20.0)
            case 103:
                //3:Leading + Trailing Edges
                return CGRectMake(20.0, 130.0, 201.0, 20.0)
            case 104:
                //4:Bottom Edges
                return CGRectMake(880.5, 70.0, 123.5, 20.0)
            case 105:
                //5:CenterX
                return CGRectMake(136.0, 190.0, 76.0, 50.0)
            case 106:
                //6:CenterY
                return CGRectMake(20.0, 205.0, 76.5, 20.0)
            case 107:
                //7:Baseline
                return CGRectMake(935.0, 220.0, 79.0, 20.0)
            default:
                //1:Left top
                return CGRectMake(20.0, 40.0, 76.0, 50.0)
            }
        }
        else if Device.isPad() == true {
            //7.9 inch or 9.7 inch
            switch tag {
            case 102:
                //2:Top Edges
                return CGRectMake(126.0, 40.0, 95.0, 20.0)
            case 103:
                //3:Leading + Trailing Edges
                return CGRectMake(20.0, 130.0, 201.0, 20.0)
            case 104:
                //4:Bottom Edges
                return CGRectMake(624.0, 70.0, 124.0, 20.0)
            case 105:
                //5:CenterX
                return CGRectMake(136.0, 190.0, 76.0, 50.0)
            case 106:
                //6:CenterY
                return CGRectMake(20.0, 205.0, 77.0, 20.0)
            case 107:
                //7:Baseline
                return CGRectMake(679.0, 220.0, 79.0, 20.0)
            default:
                //1:Left top
                return CGRectMake(20.0, 40.0, 76.0, 50.0)
            }
        }
        else if Device.IS_5_5_INCHES() == true {
            //5.5 inch
            switch tag {
            case 102:
                //2:Top Edges
                return CGRectMake(126.33333333333331, 36.0, 94.666666666666671, 20.0)
            case 103:
                //3:Leading + Trailing Edges
                return CGRectMake(20.0, 126.0, 201.0, 20.0)
            case 104:
                //4:Bottom Edges
                return CGRectMake(270.66666666666674, 66.0, 123.33333333333331, 20.0)
            case 105:
                //5:CenterX
                return CGRectMake(136.0, 186.0, 75.666666666666657, 50.0)
            case 106:
                //6:CenterY
                return CGRectMake(20.0, 201.0, 76.333333333333329, 20.0)
            case 107:
                //7:Baseline
                return CGRectMake(325.0, 216.0, 79.0, 20.0)
            default:
                //1:Left top
                return CGRectMake(20.0, 36.0, 75.666666666666671, 50.0)
            }
        }
        else if Device.IS_4_7_INCHES() == true {
            //iPhone 4.7 inch
            switch tag {
            case 102:
                //2:Top Edges
                return CGRectMake(122.5, 36, 94.5, 20)
            case 103:
                //3:Leading + Trailing Edges
                return CGRectMake(16, 126, 201, 20)
            case 104:
                //4:Bottom Edges
                return CGRectMake(235.5, 66, 123.5, 20)
            case 105:
                //5:CenterX
                return CGRectMake(132, 186, 76, 50.0)
            case 106:
                //6:CenterY
                return CGRectMake(16.0, 201.0, 76.5, 20.0)
            case 107:
                //7:Baseline
                return CGRectMake(290.0, 216.0, 79.0, 20.0)
            default:
                //1:Left top
                return CGRectMake(16.0, 36.0, 76.0, 50.0)
            }
        }
        else if Device.IS_4_INCHES() == true {
            //iPhone 4 inch
            switch tag {
            case 102:
                //2:Top Edges
                return CGRectMake(122.5, 36, 94.5, 20)
            case 103:
                //3:Leading + Trailing Edges
                return CGRectMake(16, 126, 201, 20)
            case 104:
                //4:Bottom Edges
                return CGRectMake(180.5, 66.0, 123.5, 20.0)
            case 105:
                //5:CenterX
                return CGRectMake(132, 186, 76, 50.0)
            case 106:
                //6:CenterY
                return CGRectMake(16.0, 201.0, 76.5, 20.0)
            case 107:
                //7:Baseline
                return CGRectMake(235.0, 216.0, 79.0, 20.0)
            default:
                //1:Left top
                return CGRectMake(16.0, 36.0, 76.0, 50.0)
            }
        }
        else {
            //iPhone 3.5 inch
            switch tag {
            case 102:
                //2:Top Edges
                return CGRectMake(122.5, 36, 94.5, 20)
            case 103:
                //3:Leading + Trailing Edges
                return CGRectMake(16, 126, 201, 20)
            case 104:
                //4:Bottom Edges
                return CGRectMake(180.5, 66.0, 123.5, 20.0)
            case 105:
                //5:CenterX
                return CGRectMake(132, 186, 76, 50.0)
            case 106:
                //6:CenterY
                return CGRectMake(16.0, 201.0, 76.5, 20.0)
            case 107:
                //7:Baseline
                return CGRectMake(235.0, 216.0, 79.0, 20.0)
            default:
                //1:Left top
                return CGRectMake(16.0, 36.0, 76.0, 50.0)
            }
        }
    }
    
    func createRatioLabelRect(tag:Int) -> CGRect {
        if Device.isPad() == true {
            //iPad
            switch tag {
            case 102:
                //2:View 2
                return CGRectMake(110, 40, 140, 210)
            default:
                //1:View 1
                return CGRectMake(20, 40, 70, 70)
            }
        }
        else if Device.IS_5_5_INCHES() == true {
            //5.5 inch
            switch tag {
            case 102:
                //2:View 2
                return CGRectMake(110, 36, 140, 210)
            default:
                //1:View 1
                return CGRectMake(20, 36, 70, 70)
            }
        }
        else {
            //4.7 inch, 4 inch, 3.5 inch
            switch tag {
            case 102:
                //2:View 2
                return CGRectMake(106, 36, 140, 210)
            default:
                //1:View 1
                return CGRectMake(16, 36, 70, 70)
            }
        }
    }
    
    //MARK: - PinViewControllers
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
    
    //MARK: - AlignmentViewControllers
    func testAutolayout_Alignment_Storyboard() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("alignmentViewController1")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minAlignmentLabelTag...maxAlignmentLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createAlignmentLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    func testAutolayout_Alignment_LayoutConstraint() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("alignmentViewController2")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minAlignmentLabelTag...maxAlignmentLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createAlignmentLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    func testAutolayout_Alignment_VisualFormatLanguage() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("alignmentViewController3")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minAlignmentLabelTag...maxAlignmentLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createAlignmentLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    func testAutolayout_Alignment_LayoutAnchor() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("alignmentViewController4")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in minAlignmentLabelTag...maxAlignmentLabelTag {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createAlignmentLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    //MARK: - RatioViewControllers
    func testAutolayout_Ratio_Storyboard() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("ratioViewController1")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in 101...102 {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createRatioLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
    
    func testAutolayout_Ratio_LayoutConstraint() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("ratioViewController2")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in 101...102 {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createRatioLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }

    func testAutolayout_Ratio_LayoutAnchor() {
        let viewController = storyboard.instantiateViewControllerWithIdentifier("ratioViewController3")
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
        viewController.view.layoutIfNeeded()
        for i in 101...102 {
            let subView = viewController.view.viewWithTag(i)
            
            let rect1 = (subView?.frame)!
            let rect2 = self.createRatioLabelRect((subView?.tag)!)
            let result = CGRectEqualToRect(rect1, rect2)
            if result == false {
                print("\(rect1) - \(rect2)")
            }
            XCTAssertTrue(result, "Label with tag \(i) is wrong position")
        }
    }
}
