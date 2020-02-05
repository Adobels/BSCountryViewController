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
        let tableViewDataSource = tableView.dataSource as? CountryTableViewDataSource
        if let selctedRegion = tableViewDataSource?.regions(for: indexPath) {
            delegate?.didSelectRegions(selctedRegion)
            
            if indexPath.section == Section.continents.rawValue {
                tableViewDataSource?.countries = selctedRegion
            }
        }
    }
}
