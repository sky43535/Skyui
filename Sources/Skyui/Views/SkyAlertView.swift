//
//  SkyAlertView.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI

struct SkyAlertView: View {
    let alert: SkyAlertModel

    var body: some View {
        VStack(spacing: 12) {

            Image(systemName: alert.type.icon)
                .font(.system(size: 28, weight: .semibold))
                .foregroundColor(alert.type.color)

            Text(alert.title)
                .font(.headline)

            Text(alert.message)
                .font(.subheadline)
                .multilineTextAlignment(.center)

            if let caption = alert.caption {
                Text(caption)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            HStack {
                if let secondary = alert.secondaryAction {
                    SkyAlertButton(action: secondary)
                }

                if let primary = alert.primaryAction {
                    SkyAlertButton(action: primary)
                } else {
                    SkyAlertButton(
                        action: SkyAlertAction(
                            title: "OK",
                            role: .cancel
                        ) {
                            SkyAlertManager.shared.dismiss()
                        }
                    )
                }
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .overlay(
            RoundedRectangle(cornerRadius: 22)
                .stroke(alert.type.color.opacity(0.8), lineWidth: 1.5)
        )
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .padding(.horizontal, 40)
    }
}
#Preview {
    SkyAlertView(
        alert: .init(
            type: .error,
            title: "No Internet",
            message: "Check your connection."
        )
    )
}
