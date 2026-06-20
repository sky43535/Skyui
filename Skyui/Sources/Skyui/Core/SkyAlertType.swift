//
//  SkyAlertType.swift
//  Skyui
//
//  Created by skyler peterson on 6/17/26.
//


import SwiftUI

public enum SkyAlertType {
    case error
    case success
    case warning
    case info

    var color: Color {
        switch self {
        case .error: return .red
        case .success: return .green
        case .warning: return .orange
        case .info: return .blue
        }
    }

    var icon: String {
        switch self {
        case .error: return "xmark.circle.fill"
        case .success: return "checkmark.circle.fill"
        case .warning: return "exclamationmark.triangle.fill"
        case .info: return "info.circle.fill"
        }
    }
}