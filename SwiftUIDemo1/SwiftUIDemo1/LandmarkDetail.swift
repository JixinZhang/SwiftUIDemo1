//
//  LandmarkDetail.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/17.
//  Copyright © 2020 jixin. All rights reserved.
//

import SwiftUI
import UIKit
import CoreLocation

struct LandmarkDetail: View  {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            ScrollView(showsIndicators: false) {
                Spacer()
                CircleImage(image: landmark.image)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack(alignment: .top) {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer.init()
                        Text.init(landmark.state)
                            .font(.subheadline)
                    }
                }
                .padding()
                
                Spacer()
            }
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
