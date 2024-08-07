//
//  LoginResetPageString.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// Enum for representing login container strings.
public enum ResetPasswordString: String {
    /// The reset password label.
    case resetPassword = "reset_password_header"
    /// The submit label.
    case submit = "reset_password_submit"
    /// The cancel label.
    case cancel = "reset_password_cancel"
    /// The reset password description label.
    case resetPasswordDescription = "reset_password_description"

    // Returns the localized string for the enum case.
    func localized(bundle: Bundle = .main) -> String {
        // swiftlint:disable nslocalizedstring_key
        NSLocalizedString(self.rawValue, bundle: bundle, comment: "\(self.rawValue) label")
        // swiftlint:enable nslocalizedstring_key
    }
}

