//
//  TopAttachedNavigationBarDelagete.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import UIKit

class TopAttachedNavigationBarDelagete: NSObject, UINavigationBarDelegate {
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }
}
