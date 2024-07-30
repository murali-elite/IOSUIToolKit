//
//  UnderlineModifier.swift
//  
//
//  Created by Murali moorthy on 7/17/24.
//

import SwiftUI

/// A `ViewModifier` that adds an underline to a view.
///
/// This modifier draws a line beneath the view with the specified background color.
public struct UnderlineModifier: ViewModifier {
    // MARK: - Constants

    private enum Constants {
        static let height: CGFloat = 1
        static let offsetX: CGFloat = 0
        static let offsetY: CGFloat = 3
    }

    // MARK: - Properties

    /// The color of the underline.
    public var backgroundColor: Color

    // MARK: - Initializer

    /// Initializes an `UnderlineModifier` with a specified background color.
    ///
    /// - Parameter backgroundColor: The color of the underline.
    public init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
    }

    // MARK: - ViewModifier

    /// Applies the underline modifier to the given view.
    ///
    /// - Parameter content: The view to which the underline is applied.
    /// - Returns: A view with an underline applied.
    public func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { geometry in
                    VStack {
                        Spacer()
                        Rectangle()
                            .frame(height: Constants.height)
                            .foregroundColor(backgroundColor)
                            .offset(x: Constants.offsetX, y: Constants.offsetY)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
                }
            )
    }
}
