//
//  BSCountryViewController_ExampleUITests.swift
//  BSCountryViewController_ExampleUITests
//
//  Created by Blazej SLEBODA on 22/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest

class BSCountryViewController_ExampleUITests: XCTestCase {

    func testPresentAndDismiss() {
        let app = XCUIApplication()
        
        app.launch()
        XCTAssertTrue(app.buttons["Present Countries"].isHittable)
        app.buttons["Present Countries"].tap()
        XCTAssertFalse(app.buttons["Present Countries"].isHittable)
        app.navigationBars["Regions"].buttons["Done"].tap()
        XCTAssertTrue(app.buttons["Present Countries"].isHittable)
        
    }
    
    func testSelectEuropeAndDismiss() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Present Countries"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["🌍 Europe"]/*[[".cells.staticTexts[\"🌍 Europe\"]",".staticTexts[\"🌍 Europe\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        if tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["🇦🇫 Afghanistan"]/*[[".cells.staticTexts[\"🇦🇫 Afghanistan\"]",".staticTexts[\"🇦🇫 Afghanistan\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.exists {
            XCTFail()
        }
        app.navigationBars["Regions"].buttons["Done"].tap()
    }

}
