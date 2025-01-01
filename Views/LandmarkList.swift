//
//  LandmarkList.swift
//  Landmarks
//
//  Created by yufei on 2024/12/30.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
        
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {!showFavoritesOnly || $0.isFavorite}
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
            }
            .animation(.default, value: showFavoritesOnly)
            .navigationTitle("LandMarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
