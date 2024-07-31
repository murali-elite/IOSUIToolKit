//
//  SplashScreenStrings.swift
//  IOSUITookKitSample
//
//  Created by Murali moorthy on 7/31/24.
//

import SwiftUI

// An enumeration of string constants used for splash screen text labels.
///
/// the splash screen view. Each case corresponds to a specific text string used in
/// the user interface, and can be localized for different languages.
public enum SplashScreenStrings: String {
    /// The label for the welcome message.
    case welcom = "Welcom"
    
    /// The application name.
    case appName = "CommandIQ"
    
    /// The title for the global network section.
    case gloablNetworkTitle = "Control Your internet and devices"
    
    /// The description for the global network section.
    case gloablNetworkDescription = "View and manage connectivity of all your devices"
    
    /// The title for the home network section.
    case homeNetworkTitle = "Manage your home"
    
    /// The description for the home network section.
    case homeNetworkDescription = "Group devices by the people who use them or the places they are located"
    
    /// The title for the security network section.
    case securityNetworkTitle = "Secure your network"
    
    /// The description for the security network section.
    case securityNetworkDescription = "Access your wireless password and view any security settings you have"
    
    func localized(bundle: Bundle = .main) -> String {
        /// swiftlint:disable nslocalizedstring_key
        return NSLocalizedString(self.rawValue, bundle: bundle, comment: "\(self.rawValue) label")
        /// swiftlint:enable nslocalizedstring_key
    }
}
