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

/// CardDataSource is responsible for providing the data that the UI components needs to display.
protocol CardDataSource {
    
    // Provides the type of the template of the content card
    func getTemplateType() -> TemplateType
    
    // Provide the content for the card    
    func getContent() -> [String: Any]?
    
    // Provides the published date of the card
    func getPublishedDate() -> Int?
}

