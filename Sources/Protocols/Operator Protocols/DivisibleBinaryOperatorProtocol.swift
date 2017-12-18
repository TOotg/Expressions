//
//  DivisibleBinaryOperatorProtocol.swift
//  Expression
//
//  Created by Michael Pangburn on 12/16/17.
//  Copyright © 2017 Michael Pangburn. All rights reserved.
//

import Foundation


public protocol DivisibleBinaryOperatorProtocol: NumericBinaryOperatorProtocol where Operand: Divisible {
    init(identifier: String, apply: @escaping (Operand, Operand) -> Operand, precedence: NumericBinaryOperatorPrecedence,
         associativity: BinaryOperatorAssociativity, isCommutative: Bool)
    static var divide: Self { get }
}

extension DivisibleBinaryOperatorProtocol {
    public static var divide: Self { return Self.init(identifier: "/", apply: /, precedence: .multiplication, associativity: .left, isCommutative: false) }
}
