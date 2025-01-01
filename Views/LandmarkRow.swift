//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by yufei on 2024/12/30.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark:Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
