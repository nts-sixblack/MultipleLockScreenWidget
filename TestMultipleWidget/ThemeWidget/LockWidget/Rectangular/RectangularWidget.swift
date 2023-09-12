//
//  RectangularWidget.swift
//  TestMultipleWidget
//
//  Created by Thanh Sau on 12/09/2023.
//

import Foundation
import WidgetKit
import SwiftUI
import Intents

struct RectangularProvider: IntentTimelineProvider {
    func placeholder(in context: Context) -> WidgetEntry {
        WidgetEntry(date: Date())
    }

    func getSnapshot(for configuration: RectangularWidgetSelectIntent, in context: Context, completion: @escaping (WidgetEntry) -> ()) {
        let entry = WidgetEntry(date: Date())
        
        completion(entry)
    }

    func getTimeline(for configuration: RectangularWidgetSelectIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [WidgetEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = WidgetEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct RectangularWidgetEntryView : View {
    var entry: RectangularProvider.Entry

    var body: some View {
        Text(entry.date, style: .time)
    }
}

struct RectangularWidget: Widget {
    let kind: String = "RectangularWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: RectangularWidgetSelectIntent.self, provider: RectangularProvider()) { entry in
            RectangularWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Rectangular Widget")
        .description("This is an Rectangular widget.")
        .supportedFamilies([.accessoryRectangular])
    }
}

struct RectangularWidget_Previews: PreviewProvider {
    static var previews: some View {
        RectangularWidgetEntryView(entry: WidgetEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .accessoryRectangular))
    }
}
