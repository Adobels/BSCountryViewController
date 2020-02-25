//
//  CountryTableViewDelegateTests.swift
//  BSCountryViewController_Tests
//
//  Created by Blazej SLEBODA on 23/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
@testable import BSCountryViewController

class CountryTableViewDelegateTests: XCTestCase {
    
    func testTableViewDataSourceIsNil() {
        let tableView = UITableView()
        
        let tableViewDelegate = CountryTableViewDelegate()
        let bsCountryViewControllerDelegateSpy = BSCountryViewControllerDelegateSpy()
        tableViewDelegate.delegate = bsCountryViewControllerDelegateSpy
        tableViewDelegate.tableView(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertFalse(bsCountryViewControllerDelegateSpy.didSelectRegionsTriggered)
    }
    
    func testTableViewDidSelectFirstRowInFirstSection() {
        
        let tableView = UITableView()
        let tableViewDataSource = CountryTableViewDataSourceSpy()
        tableView.dataSource = tableViewDataSource
        
        let tableViewDelegate = CountryTableViewDelegate()
        tableViewDelegate.tableView(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        XCTAssertTrue(tableViewDataSource.didSelectTrigered)
    }
    
    func testTableViewDidSelectFirstRowInSecondSection() {
        
        let tableView = UITableView()
        let tableViewDataSource = CountryTableViewDataSourceSpy()
        tableView.dataSource = tableViewDataSource
        
        let tableViewDelegate = CountryTableViewDelegate()
        tableViewDelegate.tableView(tableView, didSelectRowAt: IndexPath(row: 0, section: 1))
        XCTAssertTrue(tableViewDataSource.didSelectTrigered)
    }
    
    private class BSCountryViewControllerDelegateSpy: BSCountryViewControllerDelegate {
        var didSelectRegionsTriggered = false
        func didSelectRegions(_ regions: [String]) {
            didSelectRegionsTriggered = true
        }
    }
    
    private class CountryTableViewDataSourceSpy: CountryTableViewDataSource {
        var didSelectTrigered: Bool = false
        override func didSelect(rowAt indexPath: IndexPath) {
            didSelectTrigered = true
        }
    }
    
}
