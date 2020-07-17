//
//  CircleImage.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/17.
//  Copyright © 2020 jixin. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .scaledToFit()

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image.init("turterock"))
    }
}
