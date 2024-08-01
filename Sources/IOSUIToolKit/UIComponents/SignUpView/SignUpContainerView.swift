//
//  SwiftUIView.swift
//  
//
//  Created by Murali moorthy on 7/31/24.
//

import SwiftUI

/// A view that presents a sign-up form with fields for user details.
public struct SignUpContainerView: View {
    // MARK: - Properties

    /// A binding to the user's first name.
    @Binding var firstName: String

    /// A binding to the user's last name.
    @Binding var lastName: String

    /// A binding to the user's email address.
    @Binding var email: String

    /// A binding to the user's password.
    @Binding var password: String

    /// A binding to the user's location.
    @Binding var location: String

    /// A binding to the state indicating whether the password is hidden.
    @Binding var isPasswordHidden: Bool

    /// A list of available locations for selection.
    var elements: [String]

    /// An object providing assets for customizing the appearance of the input fields and other UI elements.
    var assets: LoginContainerAssetsProtocol

    // MARK: - View

    /// The body of the view, which includes input fields for user details, a password field,
    /// and a dropdown for location selection.
    public var body: some View {
        VStack {
            inputFieldView($firstName)
                .textFieldViewModifier(title: AuthContainerViewString.firstName.localized(),
                                       titleColor: assets.headingTextColor,
                                       tintColor: assets.tintColor)

            inputFieldView($lastName)
                .textFieldViewModifier(title: AuthContainerViewString.lastName.localized(),
                                       titleColor: assets.headingTextColor,
                                       tintColor: assets.tintColor)

            inputFieldView($email)
                .textFieldViewModifier(title: AuthContainerViewString.email.localized(),
                                       titleColor: assets.headingTextColor,
                                       tintColor: assets.tintColor)

            PasswordTextFieldView(title: AuthContainerViewString.password.localized(),
                                  password: $password,
                                  titleColor: assets.headingTextColor,
                                  tintColor: assets.tintColor)

            Text(AuthContainerViewString.location.localized())
                .foregroundColor(assets.headingTextColor)
                .dropDownViewModifier(title: $location,
                                      elements: elements,
                                      textColor: assets.headingTextColor,
                                      tintColor: assets.tintColor)
        }
    }

    public init(firstName: Binding<String>,
                lastName: Binding<String>,
                email: Binding<String>,
                password: Binding<String>,
                location: Binding<String>,
                isPasswordHidden: Binding<Bool>,
                elements: [String],
                assets: LoginContainerAssetsProtocol) {
        self._firstName = firstName
        self._lastName = lastName
        self._email = email
        self._password = password
        self._location = location
        self._isPasswordHidden = isPasswordHidden
        self.elements = elements
        self.assets = assets
    }

    // MARK: - Views

    /// Creates a text field view with customized appearance based on the iOS version.
    ///
    /// - Parameter text: A binding to the text input value.
    /// - Returns: A `TextField` view with the specified text and appearance.
    @ViewBuilder
    private func inputFieldView(_ text: Binding<String>) -> some View {
        if #available(iOS 15.0, *) {
            TextField("", text: text)
                .foregroundStyle(assets.inputFieldTextColor)
        } else {
            TextField("", text: text)
                .foregroundColor(assets.inputFieldTextColor)
        }
    }
}
