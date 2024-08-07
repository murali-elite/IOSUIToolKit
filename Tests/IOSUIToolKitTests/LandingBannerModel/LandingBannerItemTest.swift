//
//  LandingViewItemTest.swift
//  
//
//  Created by Murali moorthy on 8/2/24.
//

import XCTest
@testable import IOSUIToolKit
import SwiftUI

/// Test class for `LandingBannerItem`.
internal final class LandingBannerItemTest: XCTestCase {
    private var sut: LandingBannerItem?

    override func setUpWithError() throws {
        try super.setUpWithError()

        let splashBannerTitle = "Manage your home"
        let splashBannerDescription = "Group devices by the people who use them or the places they are located"
        let splashBannerImage = Image(systemName: "network")

        sut = LandingBannerItem(title: splashBannerTitle,
                                description: splashBannerDescription,
                                image: splashBannerImage)
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testLandingBannerItem() {
        XCTAssertEqual(sut?.title, "Manage your home")
        XCTAssertEqual(sut?.description, "Group devices by the people who use them or the places they are located")
        XCTAssertEqual(sut?.image, Image(systemName: "network"))
    }
}
