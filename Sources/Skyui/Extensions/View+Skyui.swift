//
//  View+skyui.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//
import SwiftUI

public extension View {

    func skyui() -> some View {
        self
            .overlay {
                SkyAlertHost()
            }
            .overlay {
                SkyToastHost()
            }
    }
}
