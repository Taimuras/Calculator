//
//  CalculatorSwiftUIApp.swift
//  CalculatorSwiftUI
//
//  Created by Timur on 6/1/23.
//

import SwiftUI

@main
struct CalculatorSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(MainView.ViewModel())
        }
    }
}
