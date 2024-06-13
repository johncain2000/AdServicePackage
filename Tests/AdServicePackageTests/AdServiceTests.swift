//
//  File.swift
//  
//
//  Created by John Cain on 6/13/24.
//

import XCTest
@testable import AdServicePackage

final class AdServiceTests: XCTestCase {
    func testGetAd() {
        let adService = AdService()
        let expectation = self.expectation(description: "Get Ad")
        
        adService.get_ad { adText, error in
            XCTAssertNotNil(adText)
            XCTAssertNil(error)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
}
