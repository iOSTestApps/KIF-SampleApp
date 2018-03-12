//
//  KIF_Acceptance_Tests.swift
//  KIF Acceptance Tests
//
//  Created by Romain Pouclet on 2018-03-12.
//  Copyright © 2018 buddybuild. All rights reserved.
//

import XCTest
import BuddyBuildSDK

class KIF_Acceptance_Tests: KIFTestCase {
    

    override func beforeEach() {
        super.beforeEach()

        BuddyBuildSDK.startUITests()
    }

    override func afterEach() {
        BuddyBuildSDK.stopUITests()

        super.afterEach()
    }

    func testSimpleCalculation() {
        viewTester().usingLabel("I").tap()
        viewTester().usingLabel("+").tap()
        viewTester().usingLabel("I").tap()

        viewTester().usingIdentifier("calculated_value").expect(toContainText: "II")
    }

}

extension XCTestCase {
    func viewTester(file : String = #file, _ line : Int = #line) -> KIFUIViewTestActor {
        return KIFUIViewTestActor(inFile: file, atLine: line, delegate: self)
    }

}


