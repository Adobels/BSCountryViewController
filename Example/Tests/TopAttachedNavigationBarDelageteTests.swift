//
//  TopAttachedNavigationBarDelageteTests.swift
//  BSCountryViewController_Tests
//
//  Created by Blazej SLEBODA on 25/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
@testable import BSCountryViewController

class TopAttachedNavigationBarDelageteTests: XCTestCase {
    
    func testExample() {
        let delegate = TopAttachedNavigationBarDelagete()
        let position = delegate.position(for: UINavigationBar())
        XCTAssertEqual(position, UIBarPosition.topAttached)
    }

}
