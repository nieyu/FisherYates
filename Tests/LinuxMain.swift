//import XCTest
//@testable import FisherYatesTests
//
//XCTMain([
//    testCase(FisherYatesTests.allTests),
//])

import FisherYatesTests
import XCTest

var tests = [XCTestCaseEntry]()
tests += FisherYatesTests.allTests
XCTMain(tests)

