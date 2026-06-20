//
//  SkyAlertAction.swift
//  Skyui
//
//  Created by skyler peterson on 6/20/26.
//


import SwiftUI

public struct SkyAlertAction {

    public enum Role {
        case normal
        case cancel
        case destructive
    }

    public let title: String
    public let role: Role
    public let action: () -> Void

    public init(
        title: String,
        role: Role = .normal,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.role = role
        self.action = action
    }
}