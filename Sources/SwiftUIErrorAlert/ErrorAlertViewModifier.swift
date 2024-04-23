//
//  ErrorAlertViewModifier.swift
//
//
//  Created by Alex Nagy on 23.04.2024.
//

import SwiftUI

struct ErrorAlertViewModifier: ViewModifier {
    
    @Environment(\.errorAlert) private var errorAlert
    
    @State private var isPresented = false
    
    func body(content: Content) -> some View {
        let localizedAlertError = LocalizedAlertError(error: errorAlert.error)
        content
            .alert(isPresented: $isPresented, error: localizedAlertError) { _ in
                Button(errorAlert.buttonTitle ?? "") {
                    errorAlert.action?()
                    errorAlert.error = nil
                    errorAlert.buttonTitle = nil
                    errorAlert.action = nil
                }
            } message: { error in
                Text(error.recoverySuggestion ?? "")
            }
            .onReceive(errorAlert.$error, perform: { newValue in
                if newValue != nil {
                    isPresented = true
                }
            })
    }
}
