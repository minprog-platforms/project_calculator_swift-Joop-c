//
//  ContentView.swift
//  Shared
//
//  Created by Job Cerfontain on 11/04/2022.
//

import SwiftUI


struct ContentView: View {
    @State var calculator = Calculator()
    var body: some View {
        VStack(alignment: .center){
            Text(calculator.display)
            HStack{
                Button(
                    action: {
                        calculator.allClear()
                    },
                    label: { Text("AC") }
                )
                Button(
                    action: {
                        calculator.plusMinusButton()
                    },
                    label: { Text("+/-") }
                )
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.divide)
                    },
                    label: { Text("÷") }
                )
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("7")
                    },
                    label: { Text("7") }
                )
                Button(
                    action: {
                        calculator.numberPress("8")
                    },
                    label: { Text("8") }
                )
                Button(
                    action: {
                        calculator.numberPress("9")
                    },
                    label: { Text("9") }
                )
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.multiply)
                    },
                    label: { Text("x") }
                )
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("4")
                    },
                    label: { Text("4") }
                )
                Button(
                    action: {
                        calculator.numberPress("5")
                    },
                    label: { Text("5") }
                )
                Button(
                    action: {
                        calculator.numberPress("6")
                    },
                    label: { Text("6") }
                )
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.min)
                    },
                    label: { Text("-") }
                )
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("1")
                    },
                    label: { Text("1") }
                )
                Button(
                    action: {
                        calculator.numberPress("2")
                    },
                    label: { Text("2") }
                )
                Button(
                    action: {
                        calculator.numberPress("3")
                    },
                    label: { Text("3") }
                )
                Button(
                    action: {
                        calculator.functionPress(operation: Calculator.Operations.plus)
                    },
                    label: { Text("+") }
                )
            }
            HStack{
                Button(
                    action: {
                        calculator.numberPress("0")
                    },
                    label: { Text("0") }
                )
                Button(
                    action: {
                        calculator.decimalButton()
                    },
                    label: { Text(",") }
                )
                Button(
                    action: {
                        calculator.calculate()
                    },
                    label: { Text("=") }
                )
            }
        }.buttonStyle(.bordered)
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
