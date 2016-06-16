//
//  AutolayoutExamplesUITests.swift
//  AutolayoutExamplesUITests
//
//  Created by Pham Chi Cong on 6/16/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import XCTest

class AutolayoutExamplesUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
//        XCUIDevice.sharedDevice().orientation = .Portrait
//        
//        let app = XCUIApplication()
//        let tablesQuery = app.tables
//        tablesQuery.childrenMatchingType(.Cell).elementBoundByIndex(0).staticTexts["Using Storyborad or Xib"].tap()
//        app.navigationBars["Storyboard or Xib"].buttons["Home"].tap()
//        tablesQuery.childrenMatchingType(.Cell).elementBoundByIndex(1).staticTexts["Using Programmatically"].tap()
//        app.navigationBars["Programmatically"].buttons["Home"].tap()
        
        
    }
    
}
