//
//  SwiftUIGaugeApp.swift
//  SwiftUIGauge WatchKit Extension
//
//  Created by xiaoqiang on 2022/4/2.
//

import SwiftUI

@main
struct SwiftUIGaugeApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
