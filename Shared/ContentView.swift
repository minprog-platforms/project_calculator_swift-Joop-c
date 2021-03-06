//
//  ContentView.swift
//  Shared
//
//  Created by Job Cerfontain on 11/04/2022.
//

import SwiftUI

var deviceWidth: CGFloat {
    UIScreen.main.bounds.width
}

var deviceHeight: CGFloat {
    UIScreen.main.bounds.height
}

struct numberButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: deviceWidth/5,
                   height: deviceHeight/7 )
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())

    }
}

struct functionButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: deviceWidth/5,
                   height: deviceHeight/7 )
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}


struct ContentView: View {
    @State var calculator = Calculator()
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            Text(calculator.display)
                .buttonStyle(numberButton())
            HStack{
                Button(
                    action: {
                        calculator.allClear()
                    },
                    label: { Text("AC") }
                )
                .buttonStyle(functionButton())
                Button(
                    action: {
                        calculator.plusMinusButton()
                    },
                    label: { Text("+/-") }
                )
                .buttonStyle(functionButton())
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.divide)
                    },
                    label: { Text("÷") }
                )
                .buttonStyle(functionButton())
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("7")
                    },
                    label: { Text("7") }
                )
                .buttonStyle(numberButton())

                Button(
                    action: {
                        calculator.numberPress("8")
                    },
                    label: { Text("8") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.numberPress("9")
                    },
                    label: { Text("9") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.multiply)
                    },
                    label: { Text("x") }
                )
                .buttonStyle(functionButton())
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("4")
                    },
                    label: { Text("4") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.numberPress("5")
                    },
                    label: { Text("5") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.numberPress("6")
                    },
                    label: { Text("6") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.min)
                    },
                    label: { Text("-") }
                )
                .buttonStyle(functionButton())
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("1")
                    },
                    label: { Text("1") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.numberPress("2")
                    },
                    label: { Text("2") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.numberPress("3")
                    },
                    label: { Text("3") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.plus)
                    },
                    label: { Text("+") }
                )
                .buttonStyle(functionButton())
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("0")
                    },
                    label: { Text("0") }
                )
                .buttonStyle(numberButton())
                Button(
                    action: {
                        calculator.decimalButton()
                    },
                    label: { Text(",") }
                )
                .buttonStyle(functionButton())
                Button(
                    action: {
                        calculator.calculate()
                    },
                    label: { Text("=") }
                )
                .buttonStyle(functionButton())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
