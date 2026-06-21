import SwiftUI

public enum SkyToastType {
    case success
    case error
    case warning
    case info

    var color: Color {
        switch self {
        case .success:
            return .mint

        case .error:
            return Color(red: 1.0, green: 0.35, blue: 0.45)

        case .warning:
            return Color(red: 0.85, green: 0.75, blue: 0.25)

        case .info:
            return .indigo
        }
    }

    var icon: String {
        switch self {
        case .success:
            return "checkmark"

        case .error:
            return "xmark"

        case .warning:
            return "exclamationmark"

        case .info:
            return "info"
        }
    }
}
