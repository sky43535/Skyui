//
//  SkyAlertHost.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI

struct SkyAlertHost: View {
    @StateObject private var manager = SkyAlertManager.shared

    var body: some View {
        ZStack {
            if let alert = manager.currentAlert {
                SkyAlertView(alert: alert)
                    .transition(.scale.combined(with: .opacity))
            }
        }
        .animation(.spring(response: 0.35, dampingFraction: 0.9),
                   value: manager.currentAlert?.id)
    }
}