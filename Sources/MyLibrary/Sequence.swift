//
//  File.swift
//  
//
//  Created by DDDD on 26/12/2020.
//


public extension Sequence {
    var first: Element? {
        first { _ in true }
    }
}
