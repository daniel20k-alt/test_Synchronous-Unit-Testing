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
}
