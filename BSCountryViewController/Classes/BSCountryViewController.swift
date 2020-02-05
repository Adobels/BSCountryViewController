//
//  BSCountryViewController.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import UIKit

public class BSCountryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet public var tableViewDataSource: CountryTableViewDataSource!
    @IBOutlet public var tabelViewDelegate: CountryTableViewDelegate!
    public weak var delegate: BSCountryViewControllerDelegate?
    
    var selectedRegions: [String]?
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        let bundle = Bundle(for: Self.self)
        super.init(nibName: NibName.countryPickerView.rawValue, bundle: bundle)
    }
    
    public required init?(coder: NSCoder) {
        let bundle = Bundle(for: Self.self)
        super.init(nibName: NibName.countryPickerView.rawValue, bundle: bundle)
    }
    
    @IBAction func didTapDoneButton() {
        delegate?.didTapDoneButton?(with: selectedRegions)
    }
    
}

extension BSCountryViewController: BSCountryViewControllerDelegate {
    
    public func didSelectRegions(_ regions: [String]) {
        delegate?.didSelectRegions(regions)
        selectedRegions = regions
    }
    
}
