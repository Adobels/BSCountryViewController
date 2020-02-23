//
//  CountryTableViewDelegateTests.swift
//  BSCountryViewController_Tests
//
//  Created by Blazej SLEBODA on 23/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import BSCountryViewController

class CountryTableViewDelegateTests: XCTestCase {
    
//    func testDidSelectForwardToDelegate() {
//
//        let delegate = DelegateSpy()
//
//        let tableView = UITableView()
//        let dataSource = CountryTableViewDataSource()
//        tableView.dataSource = dataSource
//        let tableViewDelegate = CountryTableViewDelegate()
//        tableView.delegate = tableViewDelegate
//
//        (tableView.delegate as? CountryTableViewDelegate)?.delegate = delegate
//        tableView.delegate?.tableView?(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
//        //tableView.tableView(UITableView(), didSelectRowAt: IndexPath(row: 0, section: 0))
//        XCTAssertGreaterThan(delegate.didSelectRegionsCounter, 0)
//
//    }
    
    func testDidSelect() {
        
        let tableViewDelegate = CountryTableViewDelegate()
        tableViewDelegate.tableView(UITableView(), didSelectRowAt: IndexPath(row: 0, section: 0))
        
    }
    
    private class DelegateSpy: BSCountryViewControllerDelegate {
        var didSelectRegionsCounter = 0
        func didSelectRegions(_ regions: [String]) {
            didSelectRegionsCounter += 1
        }
    }
    
}
