//
//  View+Extension.swift
//  CalixIOSUIToolkit
//
//  Created by labmacuser3 on 7/11/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI

extension View {
    /// A view modifier for customizing the appearance of a text field.
    ///
    /// - Parameters:
    ///   - title: The title of the text field.
    ///   - titleColor: The color of the title text. The default value is `.black`.
    ///   - tintColor: The tint color of the text field. The default value is `.gray`.
    /// - Returns: A modified view with the specified title, title color, and tint color.
    public func textFieldViewModifier(
        title: String,
        titleFont: Font = .subheadline,
        titleColor: Color = .black,
        tintColor: Color = .gray
    ) -> some View {
        modifier(
            TextFieldViewModifier(
                title: title,
                titleFont: titleFont,
                titleColor: titleColor,
                tintColor: tintColor
            )
        )
    }

    /// A view modifier for customizing the appearance of a secure text field.
    ///
    /// - Parameters:
    ///   - title: The title of the secure text field.
    ///   - titleColor: The color of the title text. The default value is `.black`.
    ///   - isTapped: A binding that indicates whether the secure text field is tapped.
    ///   - tintColor: The tint color of the secure text field. The default value is `.gray`.
    /// - Returns: A modified view with the specified title, title color, tap state, and tint color.
    public func secureFieldViewModifier(
        title: String,
        isTapped: Binding<Bool>,
        titleFont: Font = .subheadline,
        titleColor: Color = .black,
        tintColor: Color = .gray
    ) -> some View {
        modifier(
            SecureFieldViewModifier(
                title: title,
                titleColor: titleColor,
                titleFont: titleFont,
                isTapped: isTapped,
                tintColor: tintColor
            )
        )
    }

    /// A view modifier that provides a dropdown view.
    ///
    /// - Parameters:
    ///   - title: The binding to the title of the dropdown.
    ///   - elements: An array of strings representing the elements in the dropdown.
    ///   - textColor: The color of the text. Default is black.
    ///   - tintColor: The color used to tint the dropdown. Default is gray.
    ///   - selectedElement: A closure that gets called when an element is selected.
    ///    The closure provides the index and the string of the selected element.
    public func dropDownViewModifier(title: Binding<String>,
                                     elements: [String],
                                     menuTextColor: Color = .white,
                                     menuTextFont: Font = .subheadline,
                                     tintColor: Color = .gray,
                                     selectedElement: @escaping SelectedElementClouser = { _, _ in }) -> some View {
        modifier(
            DropDownViewModifier(title: title,
                                 elements: elements,
                                 menuTextColor: menuTextColor,
                                 menuTextFont: menuTextFont,
                                 tintColor: tintColor,
                                 selectedElement: selectedElement)
        )
    }

    /// Applies a custom button style to the view.
    ///
    /// - Parameters:
    ///   - backgroundColor: The background color of the button. Defaults to `.clear`.
    ///   - borderColor: The border color of the button. Defaults to `.clear`.
    /// - Returns: A view with the button style applied.
    public func buttonStyleViewModifier(backgroundColor: Color = .clear, borderColor: Color = .clear) -> some View {
        modifier(ButtonStyleViewModifier(backgroundColor: backgroundColor, borderColor: borderColor))
    }

    /// A view modifier for reading the height of a view.
    ///
    /// - Returns: A modified view that includes the height reading functionality.
    public func readHeight() -> some View {
        self
            .modifier(ReadHeightModifier())
    }

    /// Adds an underline with a specified background color to the view.
    ///
    /// - Parameter backgroundColor: The color of the background for the underline. The default value is `.black`.
    /// - Returns: A view with an underline and the specified background color applied.
    public func underlined(_ backgroundColor: Color = .black) -> some View {
        self.modifier(UnderlineModifier(backgroundColor: backgroundColor))
    }

    /// Applies a modifier to ignore safe area insets.
    ///
    /// On iOS 15.0 and later, this uses the `ignoresSafeArea()` method to extend
    /// the view into the safe areas. On earlier iOS versions, it uses `edgesIgnoringSafeArea(.all)`.
    ///
    /// - Returns: A view that ignores safe area insets.
   public func ignoreSafeArea() -> some View {
        modifier(IgnoreSafeAreaViewModifier())
    }
}

