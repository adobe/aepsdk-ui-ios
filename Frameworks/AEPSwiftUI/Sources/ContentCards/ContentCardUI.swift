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

import Foundation
import SwiftUI
import AEPMessaging

/// ContentCardUI is a class that holds data for a content card and provides a SwiftUI view representation of that content.
public class ContentCardUI: Identifiable {
    
    /// The underlying data model for the content card.
    let schemaData : ContentCardSchemaData
    
    /// SwiftUI view that represents the content card
    public lazy var view: some View = {
          EmptyView()
    }()
    
    /// Initializes the `ContentCardUI` instance with the given data
    ///- Parameter data: The `ContentCardSchemaData` to be used for the content card.
    init(data: ContentCardSchemaData) {
        self.schemaData = data
    }
}
