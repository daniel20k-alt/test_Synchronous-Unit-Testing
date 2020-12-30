import XCTest
import MyLibrary

final class BoolInitTestCase: XCTestCase {
    func test_validBits() throws {
        if let boolFromTrueBit = Bool(bit: 1) {
        XCTAssertTrue(boolFromTrueBit)
        } else {
            XCTFail()
        }
        
       let boolFromFalseBit = try XCTUnwrap( Bool(bit: 0))
        XCTAssertFalse(boolFromFalseBit)
    }
    
    
    func test_invalidBits() {
        
        XCTAssertNil( Bool(bit: -1))
        XCTAssertNil( Bool(bit: 2))
    }
    
    func test_DataByte() throws {
        let data = Data(0...2)
        
        let falseByte = data[0]
        let boolFromFalseBit = try XCTUnwrap(Bool(bit: falseByte))
        XCTAssertFalse(boolFromFalseBit)
        
        let tryVyte = data[1]
        let boolFromTrueBit = try XCTUnwrap(Bool(bit: trueByte))
        XCTAssertTrue(boolFromTrueBit)
        
        
        let invalidByte = data[2]
    }
}
