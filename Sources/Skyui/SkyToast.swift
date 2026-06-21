import SwiftUI

@MainActor
public enum SkyToast {

    public static func success(
        _ message: String,
        position: SkyToastPosition = .top
    ) {
        show(.init(
            type: .success,
            message: message,
            position: position
        ))
    }

    public static func error(
        _ message: String,
        position: SkyToastPosition = .top
    ) {
        show(.init(
            type: .error,
            message: message,
            position: position
        ))
    }

    public static func warning(
        _ message: String,
        position: SkyToastPosition = .top
    ) {
        show(.init(
            type: .warning,
            message: message,
            position: position
        ))
    }

    public static func info(
        _ message: String,
        position: SkyToastPosition = .top
    ) {
        show(.init(
            type: .info,
            message: message,
            position: position
        ))
    }

    public static func custom(_ toast: SkyToastModel) {
        show(toast)
    }

    private static func show(_ toast: SkyToastModel) {
        SkyToastManager.shared.show(toast)
    }
}
