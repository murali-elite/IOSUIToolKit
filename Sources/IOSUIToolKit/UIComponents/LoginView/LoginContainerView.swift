//
//  LoginContainerView.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/21/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view that contains the login interface, including fields for email, password, and location,
/// as well as a popup for resetting the password.
public struct LoginContainerView: View {
    // MARK: - Constants

    private enum Constants {
        static let verticalSpace: CGFloat = 30
        static let locationFontSize: CGFloat = 15
    }

    // MARK: - Properties
    var assets: LoginContainerAssetsProtocol
    @Binding var email: String
    @Binding var password: String
    @Binding var location: String
    @Binding var isPasswordHidden: Bool
    @Binding var isPopupPresented: Bool
    var locations: [String]
    /// A closure that is called when a location is selected.
    public var handler: SelectedElementClouser
    @State private var isValidEmail: Bool = true
   

    /// The content and behavior of the `LoginContainerView`.
    public var body: some View {
        VStack(spacing: Constants.verticalSpace) {
            // Email Input field
            HStack {
                TextField("", text: $email)
//                    .onChange(of: email) { _ in
//                     
//                    isValidEmail = email.isValidEmail
//                    print("Validation", isValidEmail, email)
//                }
                .textContentType(.emailAddress)
                    .forgroundColor(color: .green)

                checkMarkImage()
                    .forgroundColor(color: isValidEmail ? .green : .red)
            }
            .textFieldViewModifier(title: LoginPageString.email.localized(),
                                   titleFont: .caption,
                                   titleColor: assets.headingTextColor,
                                   tintColor: assets.tintColor)

            // Password Input field
            passwordContainerView()

            // Location Drop Down View
            if #available(iOS 15.0, *) {
                locationView()
                    .foregroundStyle(assets.headingTextColor)
            } else {
                locationView()
            }
        }
        
        TextField("TextField", text: $email) { _ in
            print("Editing...", email)
        } onCommit: {
            print("OnCommit...", email)
        }
        .frame(height: 50)
        .border(Color.black)
        .background(Color.gray)

    }

    /// Creates an instance of `LoginContainerView`.
    ///
    /// - Parameters:
    ///   - email: A binding to the email address.
    ///   - password: A binding to the password.
    ///   - location: A binding to the selected location.
    ///   - isPasswordHidden: A binding to a Boolean indicating if the password is hidden.
    ///   - locations: An array of locations to be displayed in the dropdown.
    public init(email: Binding<String>,
                password: Binding<String>,
                location: Binding<String>,
                isPasswordHidden: Binding<Bool>,
                isPopupPresented: Binding<Bool>,
                locations: [String],
                assets: LoginContainerAssetsProtocol,
                handler: @escaping SelectedElementClouser = { _, _ in }) {
        self._email = email
        self._password = password
        self._location = location
        self._isPasswordHidden = isPasswordHidden
        self._isPopupPresented = isPopupPresented
        self.locations = locations
        self.assets = assets
        self.handler = handler
    }

    @ViewBuilder
    private func forgotPasswordView() -> some View {
        Text(LoginPageString.forgotPassword.localized())
            .underlined(assets.tintColor)
            .accessibility(addTraits: .isButton)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(assets.headingTextColor)
            .onTapGesture {
                isPopupPresented.toggle()
            }
    }

    @ViewBuilder
    private func passwordContainerView() -> some View {
        VStack {
            PasswordTextFieldView(title: LoginPageString.password.localized(),
                                  password: $password,
                                  titleColor: assets.headingTextColor,
                                  tintColor: assets.tintColor)

            if #available(iOS 15.0, *) {
                forgotPasswordView()
                    .accessibilityAddTraits(.isButton)
            } else {
                forgotPasswordView()
            }
        }
    }

    @ViewBuilder
    private func locationView() -> some View {
        Text(LoginPageString.location.localized())
            .foregroundColor(assets.headingTextColor)
            .font(.system(size: Constants.locationFontSize))
            .dropDownViewModifier(title: $location,
                                  elements: locations,
                                  textColor: assets.headingTextColor,
                                  tintColor: assets.tintColor,
                                  selectedElement: handler)
    }
    
    @ViewBuilder
    private func checkMarkImage() -> some View {
        if #available(iOS 14.0, *) {
            Image(systemName: "checkmark")
                .accessibilityLabel(Text(""))
        } else {
            Image(systemName: "checkmark")
                .accessibility(label: Text(""))
        }
    }
}



extension String {
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
}




extension View {
    func forgroundColor(color: Color) -> some View {
        modifier(ForgroundColorModifier(color: color))
    }
}

struct ForgroundColorModifier: ViewModifier {
    var color: Color

    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .foregroundStyle(color)
        } else {
            content
                .foregroundColor(color)
        }
    }
}

