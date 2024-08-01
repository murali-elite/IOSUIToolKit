//
//  LoginSignUpButtonAssets.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI
import IOSUIToolKit

/// A structure representing the assets for an authentication button.
struct AuthButtonAssets: AuthButtonAssetsProtocol {
    /// The primary text displayed on the authentication button.
    var primaryText: String
    
    /// The secondary text displayed alongside the authentication button.
    var secondaryText: String
    
    /// The font used for the primary text.
    var primaryTextFont: Font
    
    /// The font used for the secondary text.
    var secondaryTextFont: Font
    
    /// The foreground color of the primary text.
    var primaryForegroundColor: Color
    
    /// The background color of the primary button.
    var primaryBackgroundColor: Color
    
    /// The heading text displayed above or below the button.
    var headingText: String
    
    /// The color of the heading text.
    var headingTextColor: Color
    
    /// The font used for the heading text.
    var headingTextFont: Font
    
    /// The border color of the secondary button.
    var secondaryBorderColor: Color
    
    /// The foreground color of the secondary button.
    var secondaryForegroundColor: Color
    
    /// Initializes an `AuthButtonAssets` instance with default values.
    ///
    /// - Parameters:
    ///   - primaryText: The primary text displayed on the authentication button. Defaults to "Log In".
    ///   - secondaryText: The secondary text displayed alongside the authentication button. Defaults to "Sign Up".
    ///   - primaryTextFont: The font used for the primary text. Defaults to `.system(size: 15)`.
    ///   - secondaryTextFont: The font used for the secondary text. Defaults to `.system(size: 15)`.
    ///   - primaryForegroundColor: The foreground color of the primary text. Defaults to `.blue`.
    ///   - primaryBackgroundColor: The background color of the primary button. Defaults to `.white`.
    ///   - headingText: The heading text displayed above or below the button. Defaults to "Don’t have a Login?".
    ///   - headingTextColor: The color of the heading text. Defaults to `.white`.
    ///   - headingTextFont: The font used for the heading text. Defaults to `.system(size: 14)`.
    ///   - secondaryBorderColor: The border color of the secondary button. Defaults to `.white`.
    ///   - secondaryForegroundColor: The foreground color of the secondary button. Defaults to `.clear`.
    public init(primaryText: String = "Log In",
                secondaryText: String = "Sign Up",
                primaryTextFont: Font = .system(size: 15),
                secondaryTextFont: Font = .system(size: 15),
                primaryForegroundColor: Color = .blue,
                primaryBackgroundColor: Color = .white,
                headingText: String = "Don’t have a Login?",
                headingTextColor: Color = .white,
                headingTextFont: Font = .system(size: 14),
                secondaryBorderColor: Color = .white,
                secondaryForegroundColor: Color = .clear) {
        self.primaryText = primaryText
        self.secondaryText = secondaryText
        self.primaryTextFont = primaryTextFont
        self.secondaryTextFont = secondaryTextFont
        self.primaryForegroundColor = primaryForegroundColor
        self.primaryBackgroundColor = primaryBackgroundColor
        self.headingText = headingText
        self.headingTextColor = headingTextColor
        self.headingTextFont = headingTextFont
        self.secondaryBorderColor = secondaryBorderColor
        self.secondaryForegroundColor = secondaryForegroundColor
    }
}
