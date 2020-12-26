

import XCTest
import MyLibrary

final class FloatingPointTestCase: XCTestCase {
    func test_isInteger() {
        XCTAssertTrue(1.0.isInteger)
        XCTAssertTrue( (2.0 as CGFloat).isInteger)
    }
}
