import XCTest

import AlgebraTests
import TrigTests

var tests = [XCTestCaseEntry]()
tests += AlgebraTests.__allTests()
tests += TrigTests.__allTests()

XCTMain(tests)
