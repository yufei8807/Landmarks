//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by yufei on 2024/12/30.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
