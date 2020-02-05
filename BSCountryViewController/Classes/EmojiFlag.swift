//
//  EmojiFlag.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import Foundation

class EmojiFlag {
    
    private static let unicodeDictionary: [String:String] = {
        let dic = ["A":"🇦", "B":"🇧", "C":"🇨", "D":"🇩","E":"🇪", "F":"🇫", "G":"🇬", "H":"🇭", "I":"🇮", "J":"🇯", "K":"🇰", "L":"🇱", "M":"🇲", "N":"🇳", "O":"🇴", "P":"🇵","Q":"🇶", "R":"🇷", "S":"🇸","T":"🇹", "U":"🇺", "V":"🇻", "W":"🇼", "X":"🇽", "Y":"🇾", "Z":"🇿"]
        return dic
    }()
    
    static func emojiFlag(iso31661Alpha2code code: String) -> String {
        let emptyReturn = ""
        
        guard code.count == 2 else {
            return emptyReturn
        }
        
        let firstLetter = String(code.first!)
        let secondLetter = String(code.last!)
        
        guard
            let firstUnicode = unicodeDictionary[firstLetter],
            let secondUnicode = unicodeDictionary[secondLetter]
        else {
            return emptyReturn
        }
        
        let unicode = String(format: "%@%@", firstUnicode, secondUnicode)
        
        return unicode
    }
    
}
