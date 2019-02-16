import XCTest

#if os(macOS) || os(iOS)
#else
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(FisherYatesShuffleTest.allTests)
    ]
}
#endif

