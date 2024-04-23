//
//  UsesErrorAlertViewModifier.swift
//
//
//  Created by Alex Nagy on 23.04.2024.
//

import SwiftUI

struct UsesErrorAlertViewModifier: ViewModifier {
    
    @StateObject private var errorAlert = ErrorAlert()
    
    func body(content: Content) -> some View {
        content
            .modifier(ErrorAlertViewModifier())
            .environment(\.errorAlert, errorAlert)
    }
}

public extension View {
    func usesErrorAlert() -> some View {
        modifier(UsesErrorAlertViewModifier())
    }
}
