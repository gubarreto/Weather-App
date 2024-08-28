//
//  Blur.swift
//  Weather App
//
//  Created by Gustavo Barreto on 27/08/24.
//

import SwiftUI

open class UIBackdropView: UIView {

  open override class var layerClass: AnyClass {
    NSClassFromString("CABackdropLayer") ?? CALayer.self
  }
}

public struct Backdrop: UIViewRepresentable {

  public init() {}

  public func makeUIView(context: Context) -> UIBackdropView {
    UIBackdropView()
  }

  public func updateUIView(_ uiView: UIBackdropView, context: Context) {}
}

public struct Blur: View {

  public var radius: CGFloat
  public var opaque: Bool

  public init(radius: CGFloat = 3.0, opaque: Bool = false) {
    self.radius = radius
    self.opaque = opaque
  }

  public var body: some View {
    Backdrop()
      .blur(radius: radius, opaque: opaque)
  }
}
