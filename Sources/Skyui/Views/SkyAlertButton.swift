//
//  SkyAlertButton.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI

struct SkyAlertButton: View {
    let action: SkyAlertAction

    var body: some View {
        Button(action: action.action) {
            Text(action.title)
                .font(.subheadline.weight(.semibold))
                .foregroundColor(textColor)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(background)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }

    private var textColor: Color {
        switch action.role {
        case .destructive: return .white
        default: return .primary
        }
    }

    private var background: Color {
        switch action.role {
        case .destructive: return .red
        case .cancel: return Color.gray.opacity(0.2)
        default: return Color.primary.opacity(0.08)
        }
    }
}