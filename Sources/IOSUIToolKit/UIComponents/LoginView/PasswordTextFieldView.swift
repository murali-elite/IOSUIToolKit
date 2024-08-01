//
//  PasswordTextFieldView.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/17/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

/// A view that displays a password text field with a toggle for secure text entry.
public struct PasswordTextFieldView: View {
    // MARK: - Properties

    /// The title for the text field.
    var title: String

    /// The password text binding.
    @Binding var password: String

    /// A boolean indicating whether the text is secured.
    @State var isSecured: Bool

    /// The color for the title text.
    var titleColor: Color

    /// The font for the title text.
    var titleFont: Font

    /// The color for the input  text.
    var inputTextColor: Color

    /// The font for the input field text.
    var inputFieldFont: Font

    /// The color for the tint of the text field.
    var tintColor: Color

    // MARK: - Body

    /// The content and behavior of the `PasswordTextFieldView`.
    public var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                if isSecured {
                    textField()
                        .foregroundStyle(titleColor)
                } else {
                    secureTextField()
                        .foregroundStyle(titleColor)
                }
            } else {
                if isSecured {
                    textField()
                } else {
                    secureTextField()
                }
            }
        }
    }

    // MARK: - Initializer

    /// Initializes a new instance of the `PasswordTextFieldView`.
    ///
    /// - Parameters:
    ///   - title: The title for the text field.
    ///   - password: The binding to the password text.
    ///   - isSecured: A boolean indicating whether the text is secured. The default value is `true`.
    ///   - titleColor: The color for the title text. The default value is `.black`.
    ///   - tintColor: The color for the tint of the text field. The default value is `.black`.
    public init(title: String,
                password: Binding<String>,
                isSecured: Bool = true,
                titleColor: Color = .black,
                inputTextColor: Color = .black,
                tintColor: Color = .black,
                titleFont: Font = .subheadline,
                inputFieldFont: Font = .headline) {
        self.title = title
        self._password = password
        self.isSecured = isSecured
        self.titleColor = titleColor
        self.tintColor = tintColor
        self.titleFont = titleFont
        self.inputFieldFont = inputFieldFont
        self.inputTextColor = inputTextColor
    }

    // MARK: - Private Views

    /// Creates a secure field view.
    @ViewBuilder
    private func textField() -> some View {
        SecureField("", text: $password)
            .foregroundColor(titleColor)
            .font(inputFieldFont)
            .secureFieldViewModifier(title: title,
                                     isTapped: $isSecured,
                                     titleFont: titleFont,
                                     titleColor: titleColor,
                                     tintColor: tintColor)
    }

    /// Creates a text field view.
    @ViewBuilder
    private func secureTextField() -> some View {
        TextField("", text: $password)
            .foregroundColor(.white)
            .font(inputFieldFont)
            .secureFieldViewModifier(title: title,
                                     isTapped: $isSecured,
                                     titleFont: titleFont,
                                     titleColor: titleColor,
                                     tintColor: tintColor)
    }
}
