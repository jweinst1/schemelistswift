import XCTest
@testable import schemelistswift

class schemelistswiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(schemelistswift().text, "Hello, World!")
    }


    static var allTests : [(String, (schemelistswiftTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
