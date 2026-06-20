//
//  SkyAlertManager.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI
import Combine

@MainActor
final class SkyAlertManager: ObservableObject {

    static let shared = SkyAlertManager()

    @Published var currentAlert: SkyAlertModel?

    func show(_ alert: SkyAlertModel) {
        currentAlert = alert
    }

    func dismiss() {
        currentAlert = nil
    }
}
