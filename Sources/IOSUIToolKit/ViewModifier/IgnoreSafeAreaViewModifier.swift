//
//  IgnoreSafeAreaViewModifier.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/29/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view modifier that adjusts the view to ignore safe area insets.
///
/// This modifier extends the view to the edges of the screen, bypassing safe area insets.
/// On iOS 15.0 and later, it uses the `ignoresSafeArea()` method. On earlier iOS versions,
/// it uses `edgesIgnoringSafeArea(.all)` to achieve a similar effect.
public struct IgnoreSafeAreaViewModifier: ViewModifier {
    /// Applies the modifier to ignore safe area insets.
    ///
    /// On iOS 15.0 and later, this uses the `ignoresSafeArea()` method to extend
    /// the view into the safe areas. On earlier iOS versions, it uses `edgesIgnoringSafeArea(.all)`.
    ///
    /// - Parameter content: The content view to which the modifier is applied.
    /// - Returns: A view that ignores safe area insets.
    public func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .ignoresSafeArea()
        } else {
            content.edgesIgnoringSafeArea(.all)
        }
    }
}
