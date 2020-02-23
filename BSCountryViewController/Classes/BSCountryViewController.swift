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
        super.init(
            nibName: NibName.countryPickerView.rawValue,
            bundle: Bundle(for: Self.self))
    }
    
    public required init?(coder: NSCoder) {
        super.init(
            nibName: NibName.countryPickerView.rawValue,
            bundle: Bundle(for: Self.self))
    }
    
    @IBAction func didTapDoneButton() {
        self.didTapDoneButton(with: selectedRegions)
    }
    
}

extension BSCountryViewController: BSCountryViewControllerDelegate {
    
    public func didTapDoneButton(with regions: [String]?) {
        delegate?.didTapDoneButton?(with: selectedRegions)
    }
    
    public func didSelectRegions(_ regions: [String]) {
        selectedRegions = regions
        delegate?.didSelectRegions(regions)
    }
    
}
