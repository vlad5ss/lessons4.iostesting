//
//  MockFirstNameValidator.swift
//  lessons4.iostesting
//
//  Created by mac on 7/28/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import XCTest

class MockFirstNameValidator: FirstNameValidator {
    private var expectation:XCTestExpectation?
    private var expectedValue:String?
    init(_ expectation:XCTestExpectation, expectedValue:String) {
        self.expectation = expectation
        self.expectedValue = expectedValue
        super.init()
    }
    override func validate(_ value:String) -> Bool {
        if let expectation = self.expectation,
            let expectedValue = self.expectedValue {
            if value.compare(expectedValue) == .orderedSame {
                expectation.fulfill()
            }
        }
        return super.validate(value)
    }
}
