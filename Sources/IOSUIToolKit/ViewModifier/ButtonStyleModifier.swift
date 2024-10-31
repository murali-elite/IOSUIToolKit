//
//  ButtonStyleViewModifier.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/10/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view modifier for styling buttons with a custom background color and border color.
public struct ButtonStyleModifier: ViewModifier {
    // MARK: - Constants

    private enum Constants {
        static let buttonHeight: CGFloat = 43
        static let cornerRadius: CGFloat = 5
        static let borderWidth: CGFloat = 1
    }

    /// The background color of the button.
    var backgroundColor: Color

    /// The border color of the button.
    var borderColor: Color

    /// Applies the styling to the provided content.
    ///
    /// - Parameter content: The content to style.
    /// - Returns: A view with the applied button styling.
    public func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, minHeight: Constants.buttonHeight)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .stroke(borderColor, lineWidth: Constants.borderWidth)
            )
    }
}
