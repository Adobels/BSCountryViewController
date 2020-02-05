//
//  CountryTableViewDataSource.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import UIKit

public class CountryTableViewDataSource: NSObject, UITableViewDataSource {
    
    func regions(for indexPath: IndexPath) -> [String] {
        switch indexPath.section {
        case Section.continents.rawValue:
            switch indexPath.row {
            case 0: return dataSourceOfCountriesByContinent[ContinentIdentificator.world.rawValue] ?? []
            case 1: return dataSourceOfCountriesByContinent[ContinentIdentificator.africa.rawValue] ?? []
            case 2: return dataSourceOfCountriesByContinent[ContinentIdentificator.asia.rawValue] ?? []
            case 3: return dataSourceOfCountriesByContinent[ContinentIdentificator.europe.rawValue] ?? []
            case 4: return dataSourceOfCountriesByContinent[ContinentIdentificator.northAmerica.rawValue] ?? []
            case 5: return dataSourceOfCountriesByContinent[ContinentIdentificator.oceania.rawValue] ?? []
            case 6: return dataSourceOfCountriesByContinent[ContinentIdentificator.southAmerica.rawValue] ?? []
            default: return []
            }
        case Section.countries.rawValue:
            return [countries[indexPath.row]]
        default: return []
        }
    }
    
    var tableView: UITableView?
    
    var countries: [String] = Locale.isoRegionCodes {
        didSet {
            tableView?.reloadSections([Section.countries.rawValue], with: .automatic)
        }
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return Section.allCases.count
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.continents.rawValue:
            return continents.count
        case Section.countries.rawValue:
            return countries.count
        default:
            return 0
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let dataSource = countries[indexPath.row]
        switch indexPath.section {
        case Section.continents.rawValue:
            let continent = continents[indexPath.row]
            cell.textLabel?.text = "\(continent.flag) \(continent.name)"
        case Section.countries.rawValue:
            
            let emojiFlag = EmojiFlag.emojiFlag(iso31661Alpha2code: dataSource)
            let countryName = Locale.current.localizedString(forRegionCode: dataSource)
            cell.textLabel?.text = [emojiFlag, countryName].compactMap { $0 }.joined(separator: " ")
        default:
            break
        }
        return cell
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Section.continents.rawValue:
            return "Continents"
        case Section.countries.rawValue:
            return "Countries"
        default: return nil
        }
    }
}

enum Section: Int, CaseIterable {
    case
    continents,
    countries
}
