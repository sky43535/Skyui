//
//  SkyAlert.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//

import SwiftUI

public enum SkyAlert {

    public static func error(
        title: String,
        message: String,
        caption: String? = nil,
        action: SkyAlertAction? = nil
    ) {
        show(.init(
            type: .error,
            title: title,
            message: message,
            caption: caption,
            primaryAction: action
        ))
    }

    public static func success(
        title: String,
        message: String,
        caption: String? = nil,
        action: SkyAlertAction? = nil
    ) {
        show(.init(
            type: .success,
            title: title,
            message: message,
            caption: caption,
            primaryAction: action
        ))
    }

    public static func warning(
        title: String,
        message: String,
        caption: String? = nil,
        action: SkyAlertAction? = nil
    ) {
        show(.init(
            type: .warning,
            title: title,
            message: message,
            caption: caption,
            primaryAction: action
        ))
    }

    public static func info(
        title: String,
        message: String,
        caption: String? = nil,
        action: SkyAlertAction? = nil
    ) {
        show(.init(
            type: .info,
            title: title,
            message: message,
            caption: caption,
            primaryAction: action
        ))
    }

    public static func custom(_ model: SkyAlertModel) {
        show(model)
    }

    private static func show(_ model: SkyAlertModel) {
        Task { @MainActor in
            SkyAlertManager.shared.show(model)
        }
    }
}
