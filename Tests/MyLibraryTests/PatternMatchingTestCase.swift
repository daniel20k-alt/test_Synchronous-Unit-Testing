//
//  File.swift
//  
//
//  Created by DDDD on 28/12/2020.
//

import XCTest
import MyLibrary

final class PatternMarchingTestCase: XCTestCase {
    func test_Character() {
        let g: Character = "g"
        switch g {
        case \.isNumber, \.isHexDigit:
            XCTFail()
        case \.isLetter:
            break
        default:
            XCTFail()        }
    }
}

func test_Double() {
    switch 1.0 {
    case \.isZero, [2, 100, -0.3].contains, { $0 != 1 }:
        XCTFail()
    case \.isInteger:
        break
    default:
        XCTFail()
    }
}
