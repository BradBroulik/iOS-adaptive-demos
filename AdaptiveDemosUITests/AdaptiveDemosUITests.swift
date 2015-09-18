//
//  AdaptiveDemosUITests.swift
//  AdaptiveDemosUITests
//
//  Created by Brad Broulik on 7/28/15.
//  Copyright © 2015 Brad Broulik. All rights reserved.
//

import XCTest

class AdaptiveDemosUITests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPopover_whenTapped_thenDisplayDoneButton() {
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Adaptive Content"].tap()
        tablesQuery.staticTexts["Popovers"].tap()
        app.navigationBars.matchingIdentifier("Popover Example").buttons["Share"].tap()
            
        let doneButton = app.navigationBars["Popover"].buttons["Done"]
        XCTAssertEqual(doneButton.exists, true)
        doneButton.tap()
    }
    
}