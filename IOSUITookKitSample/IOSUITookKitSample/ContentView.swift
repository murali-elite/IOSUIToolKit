//
//  ContentView.swift
//  IOSUITookKitSample
//
//  Created by Murali moorthy on 7/29/24.
//

import SwiftUI
import IOSUIToolKit

struct ContentView: View {
    @State private var email: String = ""
    @State private var isValidEmail: Bool = false

    private let emailRegex = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,}$"

    var body: some View {
        LoginComponentsView()
//        VStack {
//            TextField("Enter your email", text: $email, onEditingChanged: { isEditing in
//                if !isEditing {
//                    self.isValidEmail = self.validateEmail(self.email)
//                }
//            })
//            .frame(height: 50)
//            .border(isValidEmail ? Color.green : Color.red)
//            .background(Color.gray)
//            .padding()
//
//            Text(isValidEmail ? "Valid email" : "Invalid email")
//                .foregroundColor(isValidEmail ? .green : .red)
//                .padding()
//        }
    }

    private func validateEmail(_ email: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES[c] %@", emailRegex)
        return predicate.evaluate(with: email)
    }
}






struct HyperLinkView: View {
    var body: some View {
        VStack {
            Text("I accept the \(Text("terms & condition").underline()) & \(Text("privacy and policy").underline())")
            
            
            Text("I accept the")
           
        }
        .padding(100)
    }
}


#Preview {
    HyperLinkView1()
}


import SwiftUI

struct HyperLinkView1: View {
    @State private var showTermsAlert = false
    @State private var showPrivacyAlert = false

    var body: some View {
        VStack {
            HStack {
                Text("I accept the ")
                Button(action: {
                    showTermsAlert = true
                }) {
                    Text("terms & conditions")
                        .underline()
                        .foregroundColor(.blue)
                }
                Text(" & ")
                Button(action: {
                    showPrivacyAlert = true
                }) {
                    Text("privacy and policy")
                        .underline()
                        .foregroundColor(.blue)
                }
            }
            .padding(100)
            
            Text("I accept the")
        }
        .alert(isPresented: $showTermsAlert) {
            Alert(title: Text("Terms & Conditions"), message: Text("You tapped on terms & conditions"), dismissButton: .default(Text("OK")))
        }
        .alert(isPresented: $showPrivacyAlert) {
            Alert(title: Text("Privacy and Policy"), message: Text("You tapped on privacy and policy"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HyperLinkView()
    }
}



import SwiftUI

import SwiftUI

struct HyperLinkView2: View {
    @State private var showTermsAlert = false
    @State private var showPrivacyAlert = false

    var body: some View {
        
        VStack {
            Text("I accept the ")
                .fontWeight(.bold) +
            Text("Terms & Condition")
                .underline()
//                .onTapGesture(perform: {
//                    
//                })
        }
                VStack {
                    HStack {
                        Text("I accept the ")
                            .fontWeight(.bold)
                        Text("Terms & Condition Condition Condition")
                            .underline()
                            .foregroundColor(.blue)  // Make it look like a link
                            .onTapGesture {
                                // Handle tap action
                                showTermsAlert = true
                            }
                    }
                    .padding()
                }
                .alert(isPresented: $showTermsAlert) {
                    Alert(title: Text("Terms & Condition"), message: Text("You tapped on Terms & Condition"), dismissButton: .default(Text("OK")))
                }

        
        VStack(alignment: .leading) {
            HStack {
                Text("I accept the ")
                Button(action: {
                    showTermsAlert = true
                }) {
                    Text("terms & conditions")
                        .underline()
                        .foregroundColor(.blue)
                }
                Text(" & ")
                Button(action: {
                    showPrivacyAlert = true
                }) {
                    Text("privacy and policy")
                        .underline()
                        .foregroundColor(.blue)
                }
            }
            .padding()

            // Additional text or content
            Text("I accept the")
                .padding(.top, 8)
        }
        .alert(isPresented: $showTermsAlert) {
            Alert(title: Text("Terms & Conditions"), message: Text("You tapped on terms & conditions"), dismissButton: .default(Text("OK")))
        }
        .alert(isPresented: $showPrivacyAlert) {
            Alert(title: Text("Privacy and Policy"), message: Text("You tapped on privacy and policy"), dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    SignUpViewPreView()
}


struct SignUpViewPreView: View {
    @State var firstName: String = "Murali"
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var location: String = ""
    @State var isPasswordHidden: Bool = false
    
    var body: some View {
        SignUpView(firstName: $firstName,
                   lastName: $lastName,
                   email: $email,
                   password: $password,
                   location: $location,
                   isPasswordHidden: $isPasswordHidden, assets: SignUpContainerAssets())
    }
}

protocol SignUpContainerAssetsProtocol {
    var titleTextColor: Color { get set }
    var titleFont: Font { get set }
    var inputFieldTextColor: Color { get set }
    var inputFieldFont: Font { get set }
    var borderLineColor: Color { get set }
}

struct SignUpContainerAssets: SignUpContainerAssetsProtocol {
    var titleTextColor: Color
    
    var titleFont: Font
    
    var inputFieldTextColor: Color
    
    var inputFieldFont: Font
    
    var borderLineColor: Color
    
    init(titleTextColor: Color = .white,
         titleFont: Font = .system(size: 15),
         inputFieldTextColor: Color = .white,
         inputFieldFont: Font = .system(size: 15),
         borderLineColor: Color = .white) {
        self.titleTextColor = titleTextColor
        self.titleFont = titleFont
        self.inputFieldTextColor = inputFieldTextColor
        self.inputFieldFont = inputFieldFont
        self.borderLineColor = borderLineColor
    }
}

struct SignUpView: View {
    private enum Constants {
        static var verticalSpace: CGFloat = 30
    }
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var email: String
    @Binding var password: String
    @Binding var location: String
    @Binding var isPasswordHidden: Bool
    
    var assets: SignUpContainerAssetsProtocol
    var body: some View {
        VStack(spacing: Constants.verticalSpace) {
            TextField("", text: $firstName)
                .foregroundColor(assets.inputFieldTextColor)
                .textFieldViewModifier(title: "First Name",
                                       titleColor: assets.titleTextColor,
                                       tintColor: assets.borderLineColor)
            
            TextField("", text: $lastName)
                .foregroundColor(assets.inputFieldTextColor)
                .textFieldViewModifier(title: "First Name",
                                       titleColor: assets.titleTextColor,
                                       tintColor: assets.borderLineColor)
            
            TextField("", text: $email)
                .foregroundColor(assets.inputFieldTextColor)
                .textFieldViewModifier(title: "First Name",
                                       titleColor: assets.titleTextColor,
                                       tintColor: assets.borderLineColor)
            
            PasswordTextFieldView(title: "Password",
                                  password: $password, titleColor: assets.titleTextColor, tintColor: assets.borderLineColor)
            
            Text("Location")
                .foregroundStyle(assets.titleTextColor)
                .dropDownViewModifier(title: $location,
                                      elements: ["USA"],
                                      menuTextColor: assets.titleTextColor,
                                      tintColor: assets.borderLineColor)
              
        }
        .padding()
        .background(.blue)
    }
}



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
