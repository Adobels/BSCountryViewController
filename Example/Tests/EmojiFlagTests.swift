import XCTest
import BSCountryViewController

class EmojiFlagTests: XCTestCase {
    
    func testExample() {
        let emojiFlag = EmojiFlag.emojiFlag(iso31661Alpha2code: "PL")
        XCTAssertEqual(emojiFlag, "🇵🇱")
    }
    
    func testEmptyCode() {
        let emojiFlag = EmojiFlag.emojiFlag(iso31661Alpha2code: "")
        XCTAssertEqual(emojiFlag, EmojiFlag.emptyReturn)
    }
    
    func testCodeWithThreeCharacters() {
        let emojiFlag = EmojiFlag.emojiFlag(iso31661Alpha2code: "zad")
        XCTAssertEqual(emojiFlag, EmojiFlag.emptyReturn)
    }
    
    func testCodeWithCharacterWrong() {
        
        // GIVEN a two characters code and minimum one of the characters is wrong
        let countryCode1P = "1P"
        let countryCode11 = "11"
        let countryCodeP1 = "P1"
        
        // WHEN I ask to get an emoji flag
        
        let emojiFlag1P = EmojiFlag.emojiFlag(iso31661Alpha2code: countryCode1P)
        let emojiFlag11 = EmojiFlag.emojiFlag(iso31661Alpha2code: countryCode11)
        let emojiFlagP1 = EmojiFlag.emojiFlag(iso31661Alpha2code: countryCodeP1)
        
        // THEN I should get an predefined not emoji string
        
        XCTAssertEqual(emojiFlag1P, EmojiFlag.emptyReturn)
        XCTAssertEqual(emojiFlag11, EmojiFlag.emptyReturn)
        XCTAssertEqual(emojiFlagP1, EmojiFlag.emptyReturn)
    }
    
}
