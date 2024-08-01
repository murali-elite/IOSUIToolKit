//
//  LoginContainerAssets.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI
import IOSUIToolKit

/// A structure implementing the `LoginContainerAssets` protocol, providing default colors and fonts for a login container.
struct LoginContainerAssets: LoginContainerAssetsProtocol {
    /// The font used for the heading text.
    public var headingFont: Font
    
    /// The font used for the input field text.
    public var inputFieldFont: Font
    
    /// The font used for the forgot password text.
    public var forgotPasswordFont: Font
    
    /// The color of the heading text.
    public var headingTextColor: Color
    
    /// The color of the input field text.
    public var inputFieldTextColor: Color
    
    /// The color used for the tint or accents in the login container.
    public var tintColor: Color

    /// Initializes a new `LoginContainerAssets` instance with default values.
    ///
    /// - Parameters:
    ///   - headingTextColor: The color of the heading text. Defaults to `.white`.
    ///   - tintColor: The color used for the tint or accents in the login container. Defaults to `.white`.
    ///   - headingFont: The font used for the heading text. Defaults to `.headline`.
    ///   - inputFieldFont: The font used for the input field text. Defaults to `.callout`.
    ///   - forgotPasswordFont: The font used for the forgot password text. Defaults to `.subheadline`.
    ///   - inputFieldTextColor: The color of the input field text. Defaults to `.white`.
    public init(headingTextColor: Color = .white,
                tintColor: Color = .white,
                headingFont: Font = .headline,
                inputFieldFont: Font = .callout,
                forgotPasswordFont: Font = .subheadline,
                inputFieldTextColor: Color = .white) {
        self.headingTextColor = headingTextColor
        self.tintColor = tintColor
        self.headingFont = headingFont
        self.inputFieldFont = inputFieldFont
        self.forgotPasswordFont = forgotPasswordFont
        self.inputFieldTextColor = inputFieldTextColor
    }
}
