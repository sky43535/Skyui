import SwiftUI

@MainActor
final class SkyToastManager: ObservableObject {

    static let shared = SkyToastManager()

    @Published var currentToast: SkyToastModel?

    func show(_ toast: SkyToastModel) {
        currentToast = toast
    }

    func dismiss() {
        currentToast = nil
    }
}
