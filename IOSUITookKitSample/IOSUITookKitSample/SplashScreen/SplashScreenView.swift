//
//  SplashScreenView.swift
//  IOSUITookKitSample
//
//  Created by Murali moorthy on 7/31/24.
//

import SwiftUI
import IOSUIToolKit

/// A view that displays the splash screen for the app.
public struct SplashScreenView: View {
    /// An array of `LandingBannerItem` objects used to populate the landing animation view.
    private var items: [LandingBannerItem] = [
        LandingBannerItem(title: SplashScreenStrings.gloablNetworkTitle.localized(),
                          description: SplashScreenStrings.gloablNetworkDescription.localized(),
                          image: Image("Landing-Globel-Image")),
        LandingBannerItem(title: SplashScreenStrings.homeNetworkTitle.localized(),
                          description: SplashScreenStrings.homeNetworkDescription.localized(),
                          image: Image("Landing-Home-Image")),
        LandingBannerItem(title: SplashScreenStrings.securityNetworkTitle.localized(),
                          description: SplashScreenStrings.securityNetworkDescription.localized(),
                          image: Image("Landing-Security-Image"))
    ]

    /// The main view body of the `SplashScreenView`.
    ///
    /// This property conditionally uses `NavigationStack` or `NavigationView` based on iOS version
    /// and provides the layout and content for the splash screen, including a welcome banner,
    /// landing animation, and a navigation link to the login screen.
    public var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                content
            }
        } else {
            NavigationView {
                content
            }
        }
    }

    /// The content view of the splash screen, including background color, scrollable content,
    /// and navigation elements.
    ///
    /// This view contains the welcome banner, landing animation view, and a navigation link
    /// to the login screen. It is used within the `body` property to build the overall layout.
    private var content: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    WelcomeBannerView(title: "Welcome",
                                      secondaryTitle: "CommandIQ",
                                      assets: LoginContainerAssets())

                   // LandingAnimationView(items: items)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<items.count, id: \.self) { index in
                                
                                
                                
                                LandingBannerView(image:  Image("Landing-Globel-Image"), heading: SplashScreenStrings.homeNetworkTitle.localized(), subHeading: SplashScreenStrings.homeNetworkDescription.localized())
                                    .background(
                                        GeometryReader { geometry in
                                            Color.clear
                                                .onAppear {
                                                    print("Screen Height", geometry.size.height)
                                                }
                                        }
                                    )
                                    .background(.red)
                                
                                
                            }
                        }
                        
                    }
                    
                    NavigationLink {
                        LoginComponentsView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Let")
                            .foregroundColor(.blue)
                            .buttonStyleViewModifier(backgroundColor: .white)
                    }
                }
            }
            .padding()
        }
    }
}


#Preview {
    SplashScreenView()
}
