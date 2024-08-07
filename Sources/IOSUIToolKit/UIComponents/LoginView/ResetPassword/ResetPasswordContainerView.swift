//
//  ResetPasswordContainerView.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/21/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view for resetting the password, including fields for email and location.
public struct ResetPasswordContainerView: View {
    // MARK: - Constants

    private enum Constants {
        static let locationFontSize: CGFloat = 15
        static let spacing: CGFloat = 20
        static let padding: CGFloat = 20
        static let verticalPadding: CGFloat = 10
        static let descriptionFontSize: CGFloat = 17
        static let titleFontSize: CGFloat = 18
        static let colorOpacity: CGFloat = 0.6
    }

    // MARK: - Properties

    /// An object that provides assets used in the reset password view.
    public var assets: ResetPasswordAssetsProtocol

    /// A binding to the email address input by the user.
    @Binding public var email: String

    /// A binding to the location input by the user.
    @Binding public var location: String

    /// A list of location options to display in the dropdown.
    public var locations: [String]

    /// A closure that is called when a location is selected.
    public var handler: SelectedElementClouser
    var submitAction: () -> Void
    var cancelAction: () -> Void

    // MARK: - Body

    /// The content and behavior of the `ForgotPasswordPopUpView`.
    public var body: some View {
        VStack {
            resetHeaderView()

            VStack(spacing: Constants.spacing) {
                if #available(iOS 15.0, *) {
                    emailFieldView()
                        .foregroundStyle(assets.inputFieldTextColor)
                    locationTextView()
                        .foregroundStyle(assets.inputFieldTextColor)
                } else {
                    emailFieldView()
                    locationTextView()
                }
            }
            .padding(.bottom, Constants.padding)

            ResetActionsButtonView(assets: assets,
                                   submitAction: submitAction,
                                   cancelAction: cancelAction)
        }
        .padding()
    }

    @ViewBuilder
    private func resetHeaderView() -> some View {
        VStack(spacing: Constants.verticalPadding) {
            if #available(iOS 15.0, *) {
                resetHeaderText()
                    .foregroundStyle(assets.headerTextColor)
                resetDescriptionText()
                    .foregroundStyle(assets.descriptionTextColor)
            } else {
                resetHeaderText()
                resetDescriptionText()
            }
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity)
        .padding(.vertical)
    }

    @ViewBuilder
    private func emailFieldView() -> some View {
        TextField("", text: $email)
            .font(assets.inputFieldTextFont)
            .foregroundColor(assets.inputFieldTextColor)
            .textFieldViewModifier(title: AuthContainerViewString.email.localized(),
                                   titleFont: assets.inputHeaderTextFont,
                                   titleColor: assets.headerTextColor,
                                   tintColor: assets.bottomLineColor)
    }

    @ViewBuilder
    private func locationTextView() -> some View {
        Text(AuthContainerViewString.location.localized())
            .font(assets.inputHeaderTextFont)
            .foregroundColor(assets.inputHeaderTextColor)
            .dropDownViewModifier(title: $location,
                                  elements: locations,
                                  menuTextColor: assets.inputHeaderTextColor,
                                  menuTextFont: assets.inputFieldTextFont,
                                  tintColor: assets.bottomLineColor)
    }

    // MARK: - Initializer

    /// Initializes a new instance of the `ResetPasswordContainerView`.
    ///
    /// - Parameters:
    ///   - email: A binding to the email address input by the user.
    ///   - location: A binding to the location input by the user.
    ///   - locations: A list of location options to display in the dropdown.
    ///   - assets: An object that provides assets used in the reset password view. Defaults to `ResetPasswordAssets()`.
    ///   - handler: A closure that is called when a location is selected.
    public init(email: Binding<String>,
                location: Binding<String>,
                locations: [String],
                assets: ResetPasswordAssetsProtocol,
                handler: @escaping SelectedElementClouser = { _, _ in },
                submitAction: @escaping () -> Void,
                cancelAction: @escaping () -> Void) {
        self.assets = assets
        self._email = email
        self._location = location
        self.locations = locations
        self.handler = handler
        self.submitAction = submitAction
        self.cancelAction = cancelAction
    }

    // MARK: - Private Methods

    @ViewBuilder
    private func resetHeaderText() -> some View {
        Text(ResetPasswordString.resetPassword.localized())
            .font(assets.headerTextFont)
            .foregroundColor(assets.descriptionTextColor)
    }

    /// Creates the description text for the reset password view.
    ///
    /// - Returns: A view displaying the description text with styling.
    @ViewBuilder
    private func resetDescriptionText() -> some View {
        Text(ResetPasswordString.resetPasswordDescription.localized())
            .font(assets.descriptionTextFont)
            .foregroundColor(assets.descriptionTextColor)
    }
}
