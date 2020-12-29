//
//  File.swift
//  
//
//  Created by DDDD on 28/12/2020.
//


public func ~= <Value>(
    pattern: (Value) -> Bool,
    value: Value
) -> Bool {
        pattern(value)
}
