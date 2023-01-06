//
//  NSObject.swift
//  CalculatorSwiftUI
//
//  Created by Timur on 6/1/23.
//

import SwiftUI

extension NSObject{
    @objc var screenHeight: CGFloat{
        UIScreen.main.bounds.height
    }
    
    @objc var screenWidth: CGFloat{
        UIScreen.main.bounds.width
    }
}
