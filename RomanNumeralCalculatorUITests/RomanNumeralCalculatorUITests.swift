import XCTest
import BuddyBuildSDK

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()

        BuddyBuildSDK.startUITests()
    }
    
    override func tearDown() {
        BuddyBuildSDK.stopUITests()
        
        super.tearDown()
    }
    
    func testExample() {
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        iButton.tap()
        app.buttons["+"].tap()
        iButton.tap()

        let label = app.staticTexts["calculated_value"]
        let exists = NSPredicate(format: "label == 'II'")

        expectation(for: exists, evaluatedWith: label, handler: nil)
        waitForExpectations(timeout: 30, handler: nil)
    }
    
}
