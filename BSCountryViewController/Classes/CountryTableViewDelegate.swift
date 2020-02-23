//
//  CountryTableViewDelegate.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import UIKit

public class CountryTableViewDelegate: NSObject, UITableViewDelegate {
    
    @IBOutlet public weak var delegate: BSCountryViewControllerDelegate?
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegateDidSelectRegions(tableView, didSelectRowAt: indexPath)
        reloadCountriesSectionIfDidSelectContinent(tableView, didSelectRowAt: indexPath)
    }
    
    private func reloadCountriesSectionIfDidSelectContinent(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let tableViewDataSource = tableView.dataSource as? CountryTableViewDataSource else {
            return
        }
        guard indexPath.section == Section.continents.rawValue else {
            return
        }
        tableViewDataSource.countries = tableViewDataSource.regions(for: indexPath)
    }
    
    private func delegateDidSelectRegions(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let tableViewDataSource = tableView.dataSource as? CountryTableViewDataSource else {
            return
        }
        let selectedRegion = tableViewDataSource.regions(for: indexPath)
        delegate?.didSelectRegions(selectedRegion)
    }
}
