//
//  Digit.swift
//  CalculatorSwiftUI
//
//  Created by Timur on 6/1/23.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
