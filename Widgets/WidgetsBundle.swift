//
//  WidgetsBundle.swift
//  Widgets
//
//  Created by Durvish Paliwal on 08/11/25.
//

import WidgetKit
import SwiftUI
@main
struct WidgetsBundle: WidgetBundle {
    var body: some Widget {
        WidgetsExtension()
        // WidgetsControl() // <--- Remove/comment if not using!
        // WidgetsLiveActivity() // <--- Remove/comment if not using!
    }

}
