//
//  LoginComponentsView.swift
//  CalixIOSUIToolkitSampleApp
//
//  Created by labmacuser3 on 7/10/24.
//  Copyright © 2024 Calix Inc. All rights reserved.
//

import SwiftUI
import IOSUIToolKit
import Combine

struct LoginComponentsView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var location: String = "USA"
    @State var resetEmail: String = ""
    @State var resetLocation: String = "USA"
    @State var isPasswordHidden: Bool = true
    @State var isPopupPresented: Bool = false
    @State private var detentHeight: CGFloat = 0
    private var locations: [String] = ["USA", "Canada", "France", "Germany", "Africa"]
    
    
    private var emailPublisher = PassthroughSubject<String, Never>()
    
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Welcom Banner View") {
                    WelcomeBannerView(title: "Welcome",
                                      secondaryTitle: "CommandIQ",
                                      assets: LoginContainerAssets())
                        .padding()
                        .background(.blue)
                }
                
                NavigationLink("Login Title View") {
                    LoginTitleView(
                        title: "Login",
                        subTitle: "Everything you need to secure and control your home network and connected devices.",
                        assets: LoginTitleAssets())
                    .padding()
                    .background(.blue)
                }
                
                NavigationLink("Password Text Field View") {
                    PasswordTextFieldView(title: "Password",
                                          password: $password,
                                          titleColor: .white,
                                          tintColor: .white)
                    .padding()
                    .background(.blue)
                    
                }
                
                NavigationLink("Login Container View") {
                    LoginContainerView(email: $email,
                                       password: $password,
                                       location: $location,
                                       isPasswordHidden: $isPasswordHidden,
                                       isPopupPresented: $isPopupPresented,
                                       locations: locations, assets: LoginContainerAssets())
                    .padding()
                    .background(.blue)
                    .sheet(isPresented: $isPopupPresented) {
                        ResetPasswordContainerView(email: $resetEmail,
                                                   location: $resetLocation,
                                                   locations: locations, assets: ResetPasswordAssets(),
                                                   submitAction: {
                            
                        },
                                                   cancelAction: {
                            
                        })
                        .readHeight()
                        .onPreferenceChange(HeightPreferenceKey.self) { height in
                            if let height {
                                detentHeight = height
                            }
                        }
                    }
                    .presentationDetents([.height(detentHeight)])
                    .presentationDragIndicator(.visible)
                    
                }
                
            }
            
            TextField("", text: $email)
            .onChange(of: email, {
               //∫ print("Changes", email)
            })
            .frame(height: 50)
            .border(.blue)
            .padding()
            
            
//            TextField("Email", text: $email)
//                       .onReceive(emailPublisher) { email in
//                           //self.isValidEmail = email.isValidEmail
//                           print("Validation", email)
//                       }
//                       .onChange(of: email) { newValue in
//                           emailPublisher.send(newValue)
//                       }
//            
            
            Spacer()
            
          
            
        }
        .navigationTitle("Navigation")
        
    }
    
}
#Preview {
    LoginComponentsView()
}



