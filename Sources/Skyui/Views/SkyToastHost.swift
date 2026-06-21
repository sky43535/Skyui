import SwiftUI

struct SkyToastHost: View {

    @StateObject private var manager = SkyToastManager.shared

    @State private var offset: CGFloat = 100
    @State private var opacity = 0.0

    var body: some View {

        if let toast = manager.currentToast {

            VStack {

                if toast.position == .bottom {
                    Spacer()
                }

                SkyToastView(toast: toast)
                    .opacity(opacity)
                    .offset(y: offset)
                    .onAppear {
                        animateIn(position: toast.position)
                        dismissLater(position: toast.position)
                    }

                if toast.position == .top {
                    Spacer()
                }
            }
            .padding(.top, toast.position == .top ? 60 : 0)
            .padding(.bottom, toast.position == .bottom ? 50 : 0)
        }
    }

    private func animateIn(position: SkyToastPosition) {

        offset = position == .top ? -120 : 120
        opacity = 0

        withAnimation(.easeOut(duration: 0.35)) {
            offset = 0
            opacity = 1
        }
    }

    private func dismissLater(position: SkyToastPosition) {

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {

            withAnimation(.easeInOut(duration: 0.35)) {

                offset = position == .top ? -120 : 120
                opacity = 0
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                SkyToastManager.shared.dismiss()
            }
        }
    }
}
