//
//  IntentHandler.swift
//  IntentHandlerForRectangularWidget
//
//  Created by Thanh Sau on 12/09/2023.
//

import Intents

class IntentHandler: INExtension, RectangularWidgetSelectIntentHandling {
    func provideParameterOptionsCollection(for intent: RectangularWidgetSelectIntent, with completion: @escaping (INObjectCollection<RectangularIntent>?, Error?) -> Void) {
        
        let items: [RectangularIntent] = [
            .init(
                identifier: "3",
                display: "Apple Card",
                subtitle: "$17.28",
                image: nil
            ),
            .init(
                identifier: "4",
                display: "Other Card",
                subtitle: "$123.32",
                image: INImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Stack_Overflow_icon.svg/200px-Stack_Overflow_icon.svg.png")!)!
            ),
        ]
        let collection = INObjectCollection(items: items)
        completion(collection, nil)
        
    }
    
}
