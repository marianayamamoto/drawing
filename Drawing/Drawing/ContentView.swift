    //
    //  ContentView.swift
    //  Drawing
    //
    //  Created by Mariana Yamamoto on 10/11/21.
    //

import SwiftUI

struct ContentView: View {
    @State private var petalOffset: Double = -20
    @State private var petalWidth: Double = 100

    var body: some View {
        Text("Hello World")
            .frame(width: 300, height: 300)
//            .background(Image("Example"))
//            .border(ImagePaint(image: Image("Example"), scale: 0.2), width: 30)
//            .border(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 30)
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
