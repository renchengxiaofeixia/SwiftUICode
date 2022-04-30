//
//  ContentView.swift
//  ChartsSwiftUI
//
//  Created by xiaoqiang on 2022/4/19.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var body: some View {
        VStack {
            // Line Chart
            LineChartView(data: [22,66,70,10,8,40], title: "Line Chart")
            Spacer()
            
            //Bar Chart
            BarChartView(
                data: ChartData(values:[
                    ("Jan",10),
                    ("Feb",15),
                    ("Mar",7),
                    ("Apr",20),
                    ("May",8),
                ]),
                title: "Bar Chart")
            
            Spacer()
            
            //Pie Chart
            PieChartView(data: [33.3,43.6,99], title: "Pie Chart")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
