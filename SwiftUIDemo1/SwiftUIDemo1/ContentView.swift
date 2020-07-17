//
//  ContentView.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/16.
//  Copyright © 2020 jixin. All rights reserved.
//

import SwiftUI
/*
 关于 some View
 
 */

var someCondition: Bool = false

struct ContentView: View {
    var body: some View {
        TabView {
            FirstView()
            SecondView()
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
