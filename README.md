# BSCountryViewController

[![CI Status](https://img.shields.io/travis/Adobels/BSCountryViewController.svg?style=flat)](https://travis-ci.org/Adobels/BSCountryViewController)
[![CI Status](https://img.shields.io/codecov/c/gh/Adobels/BSCountryViewController)](https://codecov.io/gh/Adobels/BSCountryViewController)
[![Version](https://img.shields.io/cocoapods/v/BSCountryViewController.svg?style=flat)](https://cocoapods.org/pods/BSCountryViewController)
[![Platform](https://img.shields.io/cocoapods/p/BSCountryViewController.svg?style=flat)](https://cocoapods.org/pods/BSCountryViewController)

## Requirements

Minimum: Swift 5.1.0, Xcode 11.0.0, iOS 9.0.0

## Installation

BSCountryViewController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BSCountryViewController'
```

## Usage

```swift
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
```

## Screenshot

![BSCountryViewController screenshot animated gif](https://github.com/Adobels/BSCountryViewController/blob/master/BSCountryViewController.gif)
