//
//  CountryTableViewDataSourceTests.swift
//  BSCountryViewController_Tests
//
//  Created by Blazej SLEBODA on 25/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest

@testable import BSCountryViewController

class CountryTableViewDataSourceTests: XCTestCase {
    
    func testNumberOfSectionsIsTwo() {
        let dataSource = CountryTableViewDataSource()
        let numberOfSections = dataSource.numberOfSections(in: UITableView())
        XCTAssertEqual(numberOfSections, 2)
    }
    
    func testNumberOfRowsInContinentsSection() {
        let dataSource = CountryTableViewDataSource()
        let numberOfRows = dataSource.tableView(UITableView(), numberOfRowsInSection: Section.continents.rawValue)
        XCTAssertEqual(numberOfRows, 7)
    }
    
    func testNumberOfRowsInCountriesSection() {
        let dataSource = CountryTableViewDataSource()
        let numberOfRows = dataSource.tableView(UITableView(), numberOfRowsInSection: Section.countries.rawValue)
        XCTAssertEqual(numberOfRows, 256)
        
        let numberOfRowsForNotExistingSection = dataSource.tableView(UITableView(), numberOfRowsInSection: Section.allCases.count)
        XCTAssertEqual(numberOfRowsForNotExistingSection, 0)
    }
    
    func testTitleForHeader() {
        let dataSource = CountryTableViewDataSource()
        
        let titleContinents = dataSource.tableView(UITableView(), titleForHeaderInSection: Section.continents.rawValue)
        XCTAssertEqual(titleContinents, "Continents")
        
        let titleCountries = dataSource.tableView(UITableView(), titleForHeaderInSection: Section.countries.rawValue)
        XCTAssertEqual(titleCountries, "Countries")
        
        let titleForWrongIndexPath = dataSource.tableView(UITableView(), titleForHeaderInSection: Section.allCases.count)
        XCTAssertNil(titleForWrongIndexPath)
    }
    
    func testFirstCellInContinentsSection() {
        let dataSource = CountryTableViewDataSource()
        let cell = dataSource.tableView(UITableView(), cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cell.textLabel?.text, "🌍 World")
    }

    func testFirstCellInCountriesSection() {
        let dataSource = CountryTableViewDataSource()
        let cell = dataSource.tableView(UITableView(), cellForRowAt: IndexPath(row: 0, section: 1))
        XCTAssertEqual(cell.textLabel?.text, "🇦🇨 Ascension Island")
    }
    
    func testCellForWrongIndexPath() {
        let dataSource = CountryTableViewDataSource()
        let cell = dataSource.tableView(UITableView(), cellForRowAt: IndexPath(row: 0, section: Section.allCases.count))
        XCTAssertNil(cell.textLabel?.text)
    }
    
    func testRegionsForWorldContinent() {
        let dataSource = CountryTableViewDataSource()
        let regions = dataSource.regions(for: IndexPath(row: 0, section: 0))
        XCTAssertEqual(regions.first, "AC")
        XCTAssertEqual(regions.last, "ZW")
    }
    
    func testRegionsForAscentionIsland() {
        let dataSource = CountryTableViewDataSource()
        let regions = dataSource.regions(for: IndexPath(row: 0, section: 1))
        XCTAssertEqual(regions.first, "AC")
        XCTAssertEqual(regions.last, "AC")
    }
    
    func testRegionsForWrongIndexPath() {
        let dataSource = CountryTableViewDataSource()
        let regions = dataSource.regions(for: IndexPath.init(row: 0, section: Section.allCases.count))
        XCTAssertEqual(regions.count, 0)
    }
    
    func testRegionsForEachContinent() {
        let dataSource = CountryTableViewDataSource()
        let regions0 = dataSource.regions(for: IndexPath.init(row: 0, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions0.count, 0)
        
        let regions1 = dataSource.regions(for: IndexPath.init(row: 1, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions1.count, 0)
        let regions2 = dataSource.regions(for: IndexPath.init(row: 2, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions2.count, 0)
        let regions3 = dataSource.regions(for: IndexPath.init(row: 3, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions3.count, 0)
        let regions4 = dataSource.regions(for: IndexPath.init(row: 4, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions4.count, 0)
        let regions5 = dataSource.regions(for: IndexPath.init(row: 5, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions5.count, 0)
        let regions6 = dataSource.regions(for: IndexPath.init(row: 6, section: Section.continents.rawValue))
        XCTAssertGreaterThan(regions6.count, 0)
        let regions7 = dataSource.regions(for: IndexPath.init(row: 7, section: Section.continents.rawValue))
        XCTAssertEqual(regions7.count, 0)
    }
    
    func testDidSelectEurope() {
        let dataSource = CountryTableViewDataSource()
        let europeIndex = IndexPath(row: 3, section: 0)
        let cell = dataSource.tableView(UITableView(), cellForRowAt: europeIndex)
        XCTAssertEqual(cell.textLabel?.text, "🌍 Europe")
        dataSource.didSelect(rowAt: europeIndex)
        
        let regions = dataSource.countries
        
        XCTAssertEqual(regions.first, "AM")
        let cellAM = dataSource.tableView(UITableView(), cellForRowAt: IndexPath(row: 0, section: Section.countries.rawValue))
        XCTAssertEqual(cellAM.textLabel?.text, "🇦🇲 Armenia")
        
        let cellVA = dataSource.tableView(UITableView(), cellForRowAt: IndexPath(row: regions.count - 1, section: Section.countries.rawValue))
        XCTAssertEqual(cellVA.textLabel?.text, "🇻🇦 Vatican City")
        XCTAssertEqual(regions.last, "VA")
    }
    
    func testDidSelectFirstCountry() {
        let dataSource = CountryTableViewDataSource()
        XCTAssertGreaterThan(dataSource.countries.count, 0)
        dataSource.didSelect(rowAt: IndexPath(row: 0, section: 1))
        XCTAssertGreaterThan(dataSource.countries.count, 0)
    }
    
}
