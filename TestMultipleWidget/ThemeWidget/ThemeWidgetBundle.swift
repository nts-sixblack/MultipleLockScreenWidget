//
//  ThemeWidgetBundle.swift
//  ThemeWidget
//
//  Created by Thanh Sau on 12/09/2023.
//

import WidgetKit
import SwiftUI

@main
struct ThemeWidgetBundle: WidgetBundle {
    
    @WidgetBundleBuilder
    var body: some Widget {
        ThemeWidget()
        CircularWidget()
        RectangularWidget()
    }
}
