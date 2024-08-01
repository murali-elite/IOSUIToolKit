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
    case welcom = "splash_welcom"
    
    /// The application name.
    case appName = "splash_app_name"
    
    /// The title for the global network section.
    case gloablNetworkTitle = "splash_globel_network_title"
    
    /// The description for the global network section.
    case gloablNetworkDescription = "splash_globel_network_description"
    
    /// The title for the home network section.
    case homeNetworkTitle = "splash_home_network_title"
    
    /// The description for the home network section.
    case homeNetworkDescription = "splash_home_network_description"
    
    /// The title for the security network section.
    case securityNetworkTitle = "splash_security_network_title"
    
    /// The description for the security network section.
    case securityNetworkDescription = "splash_security_network_description"
    
    func localized(bundle: Bundle = .main) -> String {
        /// swiftlint:disable nslocalizedstring_key
        return NSLocalizedString(self.rawValue, bundle: bundle, comment: "\(self.rawValue) label")
        /// swiftlint:enable nslocalizedstring_key
    }
}

