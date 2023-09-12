//
//  IntentHandler.swift
//  IntentHandlerForCircularWidget
//
//  Created by Thanh Sau on 12/09/2023.
//

import Intents

class IntentHandler: INExtension, CircularWidgetSelectIntentHandling {
    func provideSelectWidgetOptionsCollection(for intent: CircularWidgetSelectIntent, with completion: @escaping (INObjectCollection<CircularIntent>?, Error?) -> Void) {
        
        let items: [CircularIntent] = [
            .init(
                identifier: "1",
                display: "SoupPay Credit",
                subtitle: "$248.20",
                image: nil
            ),
            .init(
                identifier: "2",
                display: "SoupPay Titanium Credit",
                subtitle: "$602.01",
                image: nil
            ),
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
