//
//  AVKitRegistry.swift
//  LiveViewNativeAVKit
//
//  Created by May Matyi on 5/18/23.
//

import LiveViewNative
import SwiftUI

public struct AVKitRegistry<Root: RootRegistry>: CustomRegistry {
    public enum TagName: String {
        case VideoPlayer = "VideoPlayer"
    }
    
    public static func lookup(_ name: TagName, element: ElementNode) -> some View {
        switch name {
        case .VideoPlayer:
            LVNVideoPlayer(element: element)
        }
    }
}