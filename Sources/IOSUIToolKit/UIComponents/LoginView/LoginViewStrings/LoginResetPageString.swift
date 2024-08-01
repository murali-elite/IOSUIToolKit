//
//  LoginResetPageString.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/24/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI


public enum LoginResetPageString: String {
    case resetPassword = "reset_password_title"
    case submit = "reset_button_submit"
    case cancel = "reset_button_cancel"
    case resetPasswordDescription = "reset_password_description"
    
    func localized(bundle: Bundle = .main) -> String {
        return NSLocalizedString(self.rawValue, bundle: bundle, comment: "\(self.rawValue) label")
    }
}
