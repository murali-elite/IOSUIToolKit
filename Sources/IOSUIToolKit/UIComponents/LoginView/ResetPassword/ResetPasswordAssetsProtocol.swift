//
//  ForgotPasswordAsset.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// Protocol defining the assets for the Forgot Password view, such as colors.
public protocol ResetPasswordAssetsProtocol {
    /// The color of the header text.
    var headerTextColor: Color { get set }

    /// The font of the header text.
    var headerTextFont: Font { get set }

    /// The color of the description text.
    var descriptionTextColor: Color { get set }

    /// The font of the description text.
    var descriptionTextFont: Font { get set }

    /// The color of the input header text.
    var inputHeaderTextColor: Color { get set }

    /// The font of the input header text.
    var inputHeaderTextFont: Font { get set }

    /// The color of the input field text.
    var inputFieldTextColor: Color { get set }

    /// The font of the input field text.
    var inputFieldTextFont: Font { get set }

    /// The color of the bottom line.
    var bottomLineColor: Color { get set }

    /// The background color of the submit button.
    var submitBackgroundColor: Color { get set }

    /// The background color of the cancel button.
    var cancelBackgroundColor: Color { get set }

    /// The foreground color of the submit button.
    var submitForgroundColor: Color { get set }

    /// The foreground color of the cancel button.
    var cancelForgroundColor: Color { get set }

    /// The font of the submit text.
    var submitTextFont: Font { get set }

    /// The font of the submit text.
    var cancelTextFont: Font { get set }
}
