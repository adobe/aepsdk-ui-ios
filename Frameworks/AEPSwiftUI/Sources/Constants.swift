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

enum Constants {
    static let LOG_TAG = "AEPSwiftUI"
    static let EXTENSION_VERSION = "5.0.0"

    enum CardTemplate {
        static let SmallImage = "SmallImage"
        static let LargeImage = "LargeImage"
        static let ImageOnly = "ImageOnly"

        enum InteractionID {
            // TODO: Verify with PM to see if this Interaction event name makes sense of all platforms
            static let cardTapped = "Card Clicked"
        }

        enum SchemaData {
            enum Meta {
                static let ADOBE_DATA = "adobe"
                static let TEMPLATE = "template"
            }

            static let TITLE = "title"
            static let BODY = "body"
            static let IMAGE = "image"
            static let ACTION_URL = "actionUrl"
            static let BUTTONS = "buttons"
        }

        enum UIElement {
            enum Text {
                static let CONTENT = "content"
            }

            enum Button {
                static let INTERACTION_ID = "interactId"
                static let TEXT = "text"
                static let ACTION_URL = "actionUrl"
            }

            enum Image {
                static let URL = "url"
                static let DARK_URL = "darkUrl"
                static let BUNDLE = "bundle"
                static let DARK_BUNDLE = "darkBundle"
            }
        }
    }
}
