//
//  FirstView.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/16.
//  Copyright © 2020 jixin. All rights reserved.
//

import SwiftUI
import UIKit

struct FirstView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello, World!!!☺️")
            .font(.title)
            .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .frame(height: 49.0)
            Text("Hello, SwiftUI!!!☺️")
            .font(.subheadline)
            .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .frame(height: 49.0)
            if someCondition {
                Text("on Condition")
            } else {
                Text("Not Condition")
            }
            Image("RunLoop")
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 2)
                )
                .shadow(radius: 10)
        }
            .tabItem {
                Image(systemName: "1.square.fill")
                Text("First")
            }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
