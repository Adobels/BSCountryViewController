//
//  BSCountryViewControllerTests.swift
//  BSCountryViewController_Tests
//
//  Created by Blazej SLEBODA on 25/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest

import BSCountryViewController

class BSCountryViewControllerTests: XCTestCase {
    
    func testInitWithCoder() {
        let vc = BSCountryViewController(coder: NSCoder())
        XCTAssertNotNil(vc)
    }
    
    func testDidSelectRegions() {
        let vc = BSCountryViewController()
        let delegate = Delegate()
        vc.delegate = delegate
        vc.didSelectRegions(["PL"])
        XCTAssertTrue(delegate.didSelectRegionsExecuted)
        XCTAssertEqual(delegate.selectedRegions, ["PL"])
    }
    
    func testDidSelectRegionsAndTapDoneButton() {
        let vc = BSCountryViewController()
        let delegate = Delegate()
        vc.delegate = delegate
        vc.didSelectRegions(["PL"])
        XCTAssertTrue(delegate.didSelectRegionsExecuted)
        XCTAssertEqual(delegate.selectedRegions, ["PL"])
        
        vc.didTapDoneButton(UIButton())
        XCTAssertTrue(delegate.didTapDoneButtonExecuted)
        XCTAssertEqual(delegate.selectedRegionsDoneButton, ["PL"])
    }
    
    class Delegate: BSCountryViewControllerDelegate {
        var didSelectRegionsExecuted = false
        var didTapDoneButtonExecuted = false
        var selectedRegions: [String] = []
        var selectedRegionsDoneButton: [String]? = nil
        
        func didSelectRegions(_ regions: [String]) {
            selectedRegions = regions
            didSelectRegionsExecuted = true
        }
        func didTapDoneButton(with regions: [String]?) {
            selectedRegionsDoneButton = regions
            didTapDoneButtonExecuted = true
        }
    }

}
