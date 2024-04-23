//
//  ErrorAlertKey.swift
//
//
//  Created by Alex Nagy on 23.04.2024.
//

import SwiftUI

public struct ErrorAlertKey: EnvironmentKey {
    @MainActor
    public static let defaultValue = ErrorAlert()
}

public extension EnvironmentValues {
    var errorAlert: ErrorAlert {
        get {
            return self[ErrorAlertKey.self]
        }
        set {
            self[ErrorAlertKey.self] = newValue
        }
    }
}
