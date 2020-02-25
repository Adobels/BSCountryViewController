//
//  BSCountryViewControllerDelegate.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import Foundation

@objc public protocol BSCountryViewControllerDelegate: class {
    func didSelectRegions(_ regions: [String])
    @objc optional func didTapDoneButton(with regions: [String]?)
}
