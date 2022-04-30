//
//  ContentView.swift
//  SwiftUIGauge WatchKit Extension
//
//  Created by xiaoqiang on 2022/4/2.
//

import SwiftUI

struct ContentView: View {
    var gradient = Gradient(colors: [.blue,.pink,.purple,.orange])
    var body: some View {
        Gauge(value: 33.0,in:0.0...100.0){
            Text("Speed")
                .foregroundColor(.blue)
        } currentValueLabel: {
            Text("33")
                .foregroundColor(.blue)
        } minimumValueLabel: {
            Text("0")
                .foregroundColor(.blue)
        } maximumValueLabel: {
            Text("100")
                .foregroundColor(.blue)
        }
        .gaugeStyle(CircularGaugeStyle(tint: gradient))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
