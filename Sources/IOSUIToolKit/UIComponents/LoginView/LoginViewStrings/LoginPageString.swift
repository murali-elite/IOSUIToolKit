//
//  LoginPageString.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// Enum for representing login container strings.
public enum LoginPageString: String {
    /// The email field label.
    case email = "Email"
    /// The password field label.
    case password = "Password"
    /// The location field label.
    case location = "Location"
    /// The forgot password label.
    case forgotPassword = "Forgot Password?"
    /// The log in label.
    case logIn = "Log In"
    /// The sign up label.
    case signIn = "Sign Up"
    /// The don't have a login label.
    case dontHaveALogIn = "Don’t have a Login?"

    // Returns the localized string for the enum case.
    func localized(bundle: Bundle = .main) -> String {
        // swiftlint:disable nslocalizedstring_key
         NSLocalizedString(self.rawValue, bundle: bundle, comment: "\(self.rawValue) label")
        // swiftlint:enable nslocalizedstring_key
    }
}
