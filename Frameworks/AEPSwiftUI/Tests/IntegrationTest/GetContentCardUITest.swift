/*
 Copyright 2024 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import Testing
import SwiftUI
@testable import AEPSwiftUI

@Suite("GetContentCardUI", .serialized)
class GetContentCardUITest : IntegrationTestBase {
    
    override init() {
        super.init()
    }
    
    @Test("when no cards available")
    func noCards() async throws {
        // setup
        setContentCardResponse(fromFile: "NoCard")
        
        // test and verify
        await #expect(throws: ContentCardUIError.dataUnavailable) {
            try await getContentCardUI(homeSurface)
        }
    }
        
    @Test("when multiple cards downloaded")
    func multipleCards() async throws {
        // setup
        setContentCardResponse(fromFile: "MultipleCards")
        
        // test
        let cards = try await getContentCardUI(homeSurface)
        
        // verify
        #expect(cards.count == 4)
    }
    
    @Test("for invalid surface")
    func invalidSurface() async throws {
        // setup
        setContentCardResponse(fromFile: "SmallImageCard")
        
        // test and verify
        await #expect(throws: ContentCardUIError.dataUnavailable) {
            try await getContentCardUI(invalidSurface)
        }
    }
}
