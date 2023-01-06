//
//  MainView.swift
//  CalculatorSwiftUI
//
//  Created by Timur on 6/1/23.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(Color.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension MainView{
    private var displayText: some View {
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
            .truncationMode(.head) //Head Dots
    }
    
    private var buttonPad: some View {
        VStack(spacing: Constants.padding) {
            ForEach(viewModel.buttonTypes, id: \.self) { row in
                HStack (spacing: Constants.padding){
                    ForEach(row, id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                            .buttonStyle(
                                CalculatorButtonStyle(size: 80, backgroundColor: buttonType.backgroundColor, foregroundColor: buttonType.foregroundColor)
                            )
                    }
                }
            }
        }
    }
}
