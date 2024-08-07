//
//  ForgotPasswordColors.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI
import IOSUIToolKit

/// Struct implementing the `ResetPasswordAssetsProtocol`, providing default colors and fonts for the Reset Password view.
public struct ResetPasswordAssets: ResetPasswordAssetsProtocol {
    /// The font of the header text.
    public var headerTextFont: Font
    
    /// The font of the description text.
    public var descriptionTextFont: Font
    
    /// The font of the input header text.
    public var inputHeaderTextFont: Font
    
    /// The color of the input field text.
    public var inputFieldTextColor: Color
    
    /// The font of the input field text.
    public var inputFieldTextFont: Font
    
    /// The font of the submit button text.
    public var submitTextFont: Font
    
    /// The font of the cancel button text.
    public var cancelTextFont: Font
    
    /// The color of the border line.
    public var borderLineColor: Color
    
    /// The color of the header text.
    public var headerTextColor: Color
    
    /// The color of the description text.
    public var descriptionTextColor: Color
    
    /// The color of the input header text.
    public var inputHeaderTextColor: Color
    
    /// The color of the bottom line.
    public var bottomLineColor: Color
    
    /// The background color of the submit button.
    public var submitBackgroundColor: Color
    
    /// The foreground color of the submit button.
    public var submitForgroundColor: Color
    
    /// The background color of the cancel button.
    public var cancelBackgroundColor: Color
    
    /// The foreground color of the cancel button.
    public var cancelForgroundColor: Color
    
    /// Initializes a new instance of `ResetPasswordAssets`.
    ///
    /// - Parameters:
    ///   - headerTextFont: The font of the header text. Defaults to `.headline`.
    ///   - descriptionTextFont: The font of the description text. Defaults to `.subheadline`.
    ///   - inputHeaderTextFont: The font of the input header text. Defaults to `.subheadline`.
    ///   - inputFieldTextColor: The color of the input field text. Defaults to `.black`.
    ///   - inputFieldTextFont: The font of the input field text. Defaults to `.callout`.
    ///   - submitTextFont: The font of the submit button text. Defaults to `.headline`.
    ///   - cancelTextFont: The font of the cancel button text. Defaults to `.headline`.
    ///   - borderLineColor: The color of the border line. Defaults to `.gray.opacity(0.6)`.
    ///   - headerTextColor: The color of the header text. Defaults to `.black`.
    ///   - descriptionTextColor: The color of the description text. Defaults to `.gray`.
    ///   - inputHeaderTextColor: The color of the input header text. Defaults to `.black`.
    ///   - bottomLineColor: The color of the bottom line. Defaults to `.gray`.
    ///   - submitBackgroundColor: The background color of the submit button. Defaults to `.blue`.
    ///   - submitForgroundColor: The foreground color of the submit button. Defaults to `.white`.
    ///   - cancelBackgroundColor: The background color of the cancel button. Defaults to `.white`.
    ///   - cancelForgroundColor: The foreground color of the cancel button. Defaults to `.blue`.
    public init(headerTextFont: Font = .headline,
                descriptionTextFont: Font = .subheadline,
                inputHeaderTextFont: Font = .subheadline,
                inputFieldTextColor: Color = .black,
                inputFieldTextFont: Font = .callout,
                submitTextFont: Font = .headline,
                cancelTextFont: Font = .headline,
                borderLineColor: Color = .gray.opacity(0.6),
                headerTextColor: Color = .black,
                descriptionTextColor: Color = .gray,
                inputHeaderTextColor: Color = .black,
                bottomLineColor: Color = .gray,
                submitBackgroundColor: Color = .blue,
                submitForgroundColor: Color = .white,
                cancelBackgroundColor: Color = .white,
                cancelForgroundColor: Color = .blue) {
        self.headerTextColor = headerTextColor
        self.descriptionTextColor = descriptionTextColor
        self.inputHeaderTextColor = inputHeaderTextColor
        self.bottomLineColor = bottomLineColor
        self.submitBackgroundColor = submitBackgroundColor
        self.submitForgroundColor = submitForgroundColor
        self.cancelBackgroundColor = cancelBackgroundColor
        self.cancelForgroundColor = cancelForgroundColor
        self.headerTextFont = headerTextFont
        self.descriptionTextFont = descriptionTextFont
        self.inputHeaderTextFont = inputHeaderTextFont
        self.inputFieldTextColor = inputFieldTextColor
        self.inputFieldTextFont = inputFieldTextFont
        self.submitTextFont = submitTextFont
        self.cancelTextFont = cancelTextFont
        self.borderLineColor = borderLineColor
    }
}
