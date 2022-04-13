//
//  ContentView.swift
//  Shared
//
//  Created by Job Cerfontain on 11/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Placeholder for output")
            HStack{
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("AC") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("+/-") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("%") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("÷") }
                )
            }
            HStack{
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("7") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("8") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("9") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("x") }
                )
            }
            HStack{
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("4") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("5") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("6") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("-") }
                )
            }
            HStack{
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("1") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("2") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("3") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("+") }
                )
            }
            HStack{
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("0") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text(",") }
                )
                Button(
                    action: {
                        // did tap
                    },
                    label: { Text("=") }
                )
            }
        }.buttonStyle(.bordered)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
