//
//  SkyAlertManager.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI
import Combine

@MainActor
public final class SkyAlertManager: ObservableObject {

    public static let shared = SkyAlertManager()

    @Published var currentAlert: SkyAlertModel?

    func show(_ alert: SkyAlertModel) {
        currentAlert = alert
    }

    public func dismiss() {
        currentAlert = nil
    }
}
