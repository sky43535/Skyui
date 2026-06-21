import SwiftUI

struct SkyToastView: View {

    let toast: SkyToastModel

    var body: some View {
        HStack(spacing: 8) {

            Image(systemName: toast.type.icon)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(toast.type.color)

            Text(toast.message)
                .font(.system(size: 15, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 11)
        .background(
            Capsule()
                .fill(.black.opacity(0.92))
        )
        .overlay {
            Capsule()
                .stroke(toast.type.color, lineWidth: 2)
        }
        .shadow(radius: 10)
        .frame(maxWidth: 320)
    }
}
