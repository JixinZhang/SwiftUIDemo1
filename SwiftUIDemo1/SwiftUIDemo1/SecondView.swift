//
//  SecondView.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/16.
//  Copyright © 2020 jixin. All rights reserved.
//

import Foundation
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        
        HStack(content: {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: Alignment(horizontal: HorizontalAlignment.center, vertical: VerticalAlignment.center))
            Text(landmark.name)
            Spacer()
        })
    }
}

struct SecondView: View {
    var body: some View {
        NavigationView {
            List(landmarkData, rowContent: { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            })
                .navigationBarTitle(Text("Landmarks"))
        }
        .tabItem {
            Image(systemName: "2.square.fill")
            Text("Second")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }    
}
