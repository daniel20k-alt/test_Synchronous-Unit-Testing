//
//  File.swift
//  
//
//  Created by DDDD on 25/12/2020.
//

public extension FloatingPoint {
    var isInteger: Bool { rounded() == self }
}
