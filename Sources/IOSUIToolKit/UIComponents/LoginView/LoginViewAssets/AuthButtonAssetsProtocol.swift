//
//  AuthButtonAssetsProtocol.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A protocol defining the assets for authentication buttons, including colors, fonts, and text properties.
public protocol AuthButtonAssetsProtocol {
    /// The text displayed on the primary button.
    var primaryText: String { get set }

    /// The text displayed on the secondary button.
    var secondaryText: String { get set }

    /// The font used for the primary button text.
    var primaryTextFont: Font { get set }

    /// The font used for the secondary button text.
    var secondaryTextFont: Font { get set }

    /// The foreground color of the primary button text.
    var primaryForegroundColor: Color { get set }

    /// The background color of the primary button.
    var primaryBackgroundColor: Color { get set }

    /// The color of the heading text.
    var headingTextColor: Color { get set }

    /// The font used for the heading text.
    var headingTextFont: Font { get set }

    /// The border color of the secondary button.
    var secondaryBorderColor: Color { get set }

    /// The foreground color of the secondary button text.
    var secondaryForegroundColor: Color { get set }
}
