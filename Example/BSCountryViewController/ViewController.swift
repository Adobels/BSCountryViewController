//
//  ViewController.swift
//  BSCountryViewController
//
//  Created by Blazej SLEBODA on 02/05/2020.
//  Copyright (c) 2020 Blazej SLEBODA. All rights reserved.
//

import UIKit
import BSCountryViewController

class ViewController: UIViewController {
    
    @IBAction func didTapPresentCountriesPickerButton() {
        let vc = BSCountryViewController()
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: BSCountryViewControllerDelegate {
    func didSelectRegions(_ regions: [String]) {
        debugPrint("--- didSelectRegions ---")
        debugPrint(regions)
    }
    
    func didTapDoneButton(with regions: [String]?) {
        debugPrint("--- didTapDoneButton ---")
        debugPrint(regions ?? "regions array is nil")
        dismiss(animated: true, completion: nil)
    }
}
