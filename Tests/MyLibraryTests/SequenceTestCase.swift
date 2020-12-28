//
//  File.swift
//  
//
//  Created by DDDD on 26/12/2020.
//

import XCTest
import MyLibrary

final class SequenceTestCase: XCTestCase {
    func test_first() {
        
        let odds = stride(from: 1, through: 9, by: 2)
        
        let first = odds.first
        XCTAssertEqual(1, odds.first)
        XCTAssertNil(odds.prefix(0).first)
    }
    
    
    func test_sum() {
        let threetwoOne = stride(from: 3, through: 1, by: -1)
        XCTAssertEqual(threetwoOne.sum, 6)
    
        XCTAssertEqual([0.5, 1, 1.5].sum, 3)
        XCTAssertNil(Set<CGFloat>().sum)
    
        
        let oneThird = 1.0 / 3
        let theirSum = Array(repeating: oneThird, count: 30).sum
        XCTAssertEqual(theirSum, 10)
        
        let oneThirdish = 1.0 / 3
        let thirdishSum = Array(repeating: oneThirdish, count: 300).sum
        XCTAssertEqual(
            try XCTUnwrap(thirdishSum), 100, accuracy: pow(0.1, 12))
        
    }
}
