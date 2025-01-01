//
//  ContentView.swift
//  Landmarks
//
//  Created by yufei on 2024/12/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
