//
//  AuthButtonContainerView.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/21/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view that provides login and sign-up buttons.
public struct AuthButtonContainerView: View {
    // MARK: - Constants
    private enum Constants {
        static var verticalSpacing: CGFloat = 20
    }

    // MARK: - Properties
    var assets: AuthButtonAssetsProtocol
    var primaryAction: () -> Void
    var secondayAction: () -> Void

    /// The body of the `LoginSignUpContainerView`, which displays login and sign-up buttons.
    public var body: some View {
        VStack(spacing: Constants.verticalSpacing) {
            // Display the login button with appropriate styling based on iOS version
            if #available(iOS 15.0, *) {
                primaryButtonView()
                    .foregroundStyle(assets.primaryForegroundColor)
            } else {
                primaryButtonView()
            }

            // Display the sign-up button
            HeaderButtonView(
                heading: assets.headingText,
                buttonText: assets.secondaryText,
                headingColor: assets.headingTextColor,
                buttonTextColor: assets.secondaryForegroundColor,
                borderColor: assets.secondaryBorderColor,
                headerFont: assets.headingTextFont,
                buttonFont: assets.secondaryTextFont,
                action: secondayAction
            )
        }
    }

    /// Creates an instance of `LoginSignUpContainerView`.
    public init(assets: AuthButtonAssetsProtocol,
                primaryAction: @escaping () -> Void,
                secondayAction: @escaping () -> Void) {
        self.assets = assets
        self.primaryAction = primaryAction
        self.secondayAction = secondayAction
    }

    /// A view that displays a login button with a specific appearance based on the iOS version.
    ///
    /// - Returns: A `Button` view configured to represent a login action.
    @ViewBuilder
    private func primaryButtonView() -> some View {
        Button(assets.primaryText) {
            primaryAction()
        }
        .foregroundColor(assets.primaryForegroundColor)
        .buttonStyleModifier(backgroundColor: assets.primaryBackgroundColor)
    }
}
