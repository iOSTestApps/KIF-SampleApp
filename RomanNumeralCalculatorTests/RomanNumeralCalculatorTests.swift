import XCTest
@testable import RomanNumeralCalculator

class RomanNumeralCalculatorTests: XCTestCase {

    func testExample() {
        XCTAssertEqual(toRoman(1), "I")
        XCTAssertEqual(toRoman(2), "II")
        XCTAssertEqual(toRoman(4), "IV")
    }
}
