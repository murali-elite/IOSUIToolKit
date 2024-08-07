//
//  LoginPageString.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// Enum for representing login container strings.
public enum AuthContainerViewString: String {
    /// The label for the first name field.
    case firstName = "auth_first_name_title"

    /// The label for the last name field.
    case lastName = "auth_last_name_title"

    /// The email field label.
    case email = "auth_email_title"

    /// The password field label.
    case password = "auth_password_title"

    /// The location field label.
    case location = "auth_location_title"

    /// The forgot password label.
    case forgotPassword = "auth_forgot_password_title"

    /// The log in label.
    case logIn = "auth_login"

    /// The sign up label.
    case signIn = "auth_signup"

    /// The don't have a login label.
    case dontHaveALogIn = "auth_signup_header"

    /// The label indicating that the user is already registered.
    case alreadyRegistered = "auth_login_header"

    // Returns the localized string for the enum case.
    func localized(bundle: Bundle = .main) -> String {
        // swiftlint:disable nslocalizedstring_key
        NSLocalizedString(self.rawValue, bundle: bundle, comment: "\(self.rawValue) label")
        // swiftlint:enable nslocalizedstring_key
    }
}

