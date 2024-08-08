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

/// CardDelegate protocol defines methods that a delegate should implement to handle various card related events from the User Interface
protocol CardDelegate {
    
    /// Tells the delegate that the card has been displayed
    func cardDisplayed()
    
    /// Tells the delegate that the card has been dismissed
    func cardDismissed()
    
    /// Tells the delegate that the card is interacted.
    func cardInteracted(_ interactionId : String, actionURL url : URL)
}

