//
//  ContentView.swift
//  CGMath4
//
//  Created by Yuki Kuwashima on 2024/10/28.
//

import SwiftUI
import SwiftyCreatives

struct ContentView: View {
    let sketch = MySketch()
    var body: some View {
        SketchView(sketch)
            .background(.black)
    }
}

class MySketch: Sketch {
    var rotationRad: Float = 0.34
    var maxCount: Int = 1000
    override func draw(encoder: any SCEncoder) {
        for i in 1...maxCount {
            color(1 - Float(i) / Float(maxCount), 1, 1, 0.04)
            push {
                rotateZ(rotationRad * Float(i))
                translate(sqrt(Float(i)), sqrt(Float(i)), sqrt(Float(i)))
                box(sqrt(sqrt(Float(i))))
            }
        }
    }
}
