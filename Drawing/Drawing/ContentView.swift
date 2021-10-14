    //
    //  ContentView.swift
    //  Drawing
    //
    //  Created by Mariana Yamamoto on 10/11/21.
    //

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}

struct Arrow: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addPath(Triangle().path(in: CGRect(x: rect.maxX / 4, y: rect.minY, width: rect.width / 2, height: rect.height / 3)))
        path.addRect(CGRect(x: rect.maxX / 4 + rect.width / 8, y:rect.height / 3, width: rect.width / 4, height: rect.height / 2))

        return path
    }
}

struct ContentView: View {
    @State private var innerRadius = 125.0
    @State private var outerRadius = 75.0
    @State private var distance = 25.0
    @State private var amount: CGFloat = 1.0
    @State private var hue = 0.6

    var body: some View {
        Arrow()
            .stroke(Color(hue: hue, saturation: 1, brightness: 1), lineWidth: 1)
            .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
