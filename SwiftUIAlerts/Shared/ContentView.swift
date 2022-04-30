//
//  ContentView.swift
//  Shared
//
//  Created by xiaoqiang on 2022/4/2.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsPresented = false
    @State private var backgroudUpdated = false

    var body: some View {
        NavigationView {
            ZStack {
                if backgroudUpdated {
                    Color.red
                }
                else {
                    Color.blue
                }
                VStack {
                    Button {
                        self.alertIsPresented = true;
                    } label: {
                        Text("Tap Me!")
                            .foregroundColor(.white)
                             .font(.system(size: 24))
                            .bold()
                    }
                    .frame(width: 200, height: 50, alignment: .center)
                    .padding()
                    .background(.green)
                    .cornerRadius(8)
                    .alert(isPresented: $alertIsPresented) {
                        Alert(title: Text("Would you like to purchase?"), primaryButton: .default(Text("Purchase"), action: {
                            self.backgroudUpdated.toggle()
                        }), secondaryButton: .cancel(Text("No Thanks!")))
                    }
                }
            }
            .navigationTitle("SwiftUI Alerts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
