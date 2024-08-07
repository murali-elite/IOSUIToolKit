//
//  AuthHeaderView.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/17/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view that displays a header with a title and an optional subtitle.
public struct AuthHeaderView: View {
    // MARK: - Constants

    private enum Constants {
        static var titleFontSize: CGFloat = 31
        static var subTitleFontSize: CGFloat = 16
        static var verticalSpacing: CGFloat = 10
    }

    private var items: [String] = []

    // MARK: - Properties

    /// An object conforming to `LoginTitleAsstesProtocol` providing assets like fonts and colors.
    var assets: AuthHeaderAsstesProtocol

    /// The main title text displayed in the header.
    var title: String

    /// The font used for the title text.
    var titleFont: Font

    /// The optional subtitle text displayed below the title.
    var subTitle: String?

    /// The font used for the subtitle text.
    var subTitleFont: Font

    // MARK: - Body

    /// The content and layout of the `AuthHeaderView`.
    ///
    /// Displays the title and subtitle in a vertical stack with adjustable spacing.
    public var body: some View {
        VStack(alignment: .leading, spacing: Constants.verticalSpacing) {
            if #available(iOS 15.0, *) {
                titleText()
                    .foregroundStyle(assets.headerTextColor)
                if subTitle != nil {
                    subTitleText()
                        .foregroundStyle(assets.subHeadingTextColor)
                }
            } else {
                titleText()
                if subTitle != nil {
                    subTitleText()
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    // MARK: - Initializer

    /// Creates a new instance of the `AuthHeaderView`.
    ///
    /// - Parameters:
    ///   - assets: An object providing styling assets for the view, such as colors and fonts.
    ///   - title: The main title text to be displayed.
    ///   - titleFont: The font used for the title text. The default value is `.title`.
    ///   - subTitle: An optional subtitle text to be displayed below the title. The default is `nil`.
    ///   - subTitleFont: The font used for the subtitle text. The default value is `.subheadline`.
    public init(assets: AuthHeaderAsstesProtocol,
                title: String,
                titleFont: Font = .title,
                subTitle: String? = nil,
                subTitleFont: Font = .subheadline) {
        self.assets = assets
        self.title = title
        self.titleFont = titleFont
        self.subTitle = subTitle
        self.subTitleFont = subTitleFont
    }

    // MARK: - Private Methods

    /// Constructs the view for the title text.
    ///
    /// - Returns: A view displaying the title text with the specified font and color.
    @ViewBuilder
    private func titleText() -> some View {
        Text(title)
            .font(titleFont) // Use the provided title font
            .foregroundColor(assets.headerTextColor)
    }

    /// Constructs the view for the subtitle text.
    ///
    /// - Returns: A view displaying the subtitle text with the specified font and color.
    @ViewBuilder
    private func subTitleText() -> some View {
        if let subTitle {
            Text(subTitle)
                .font(subTitleFont) // Use the provided subtitle font
                .foregroundColor(assets.subHeadingTextColor)
        }
    }
}
