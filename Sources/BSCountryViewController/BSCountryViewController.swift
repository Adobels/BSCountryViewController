//
//  BSCountryViewController.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import UIKit

public class BSCountryViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var navigationBar: UINavigationBar!
    @IBOutlet public var tableViewDataSource: CountryTableViewDataSource!
    @IBOutlet public var tabelViewDelegate: CountryTableViewDelegate!
    public weak var delegate: BSCountryViewControllerDelegate?
    
    var selectedRegions: [String]?
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public override func loadView() {
        super.loadView()
        
        // UINAvigationBar, UINavigationItem, UIBarButtonItem
        
        let navigationItem = UINavigationItem(title: "Regions")
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(actionDidTapDoneButton))
        navigationItem.leftBarButtonItem = doneButton
        
        navigationBar = UINavigationBar()
        navigationBar.setItems([navigationItem], animated: true)
        let navigationBarDelegate = TopAttachedNavigationBarDelagete()
        navigationBar.delegate = navigationBarDelegate
        
        view.addSubview(navigationBar)
        
        // UITableView

        tableView = UITableView()
        view.addSubview(tableView)
        
        // Objects
        tableViewDataSource = CountryTableViewDataSource()
        tabelViewDelegate = CountryTableViewDelegate()
        tabelViewDelegate.delegate = self
        tableView.dataSource = tableViewDataSource
        tableView.delegate = tabelViewDelegate
        
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navigationBar.sizeToFit()
        let nbHeight = navigationBar.frame.height
        tableView.frame = CGRect(x: 0, y: nbHeight, width: view.frame.width, height: view.frame.height - nbHeight)
    }
    
    @IBAction public func actionDidTapDoneButton() {
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
