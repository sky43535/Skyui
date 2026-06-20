//
//  SkyAlertModel.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI

public struct SkyAlertModel: Identifiable {
    public let id = UUID()

    public let type: SkyAlertType
    public let title: String
    public let message: String
    public let caption: String?

    public let primaryAction: SkyAlertAction?
    public let secondaryAction: SkyAlertAction?

    public init(
        type: SkyAlertType,
        title: String,
        message: String,
        caption: String? = nil,
        primaryAction: SkyAlertAction? = nil,
        secondaryAction: SkyAlertAction? = nil
    ) {
        self.type = type
        self.title = title
        self.message = message
        self.caption = caption
        self.primaryAction = primaryAction
        self.secondaryAction = secondaryAction
    }
}