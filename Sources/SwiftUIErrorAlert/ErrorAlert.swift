//
//  ErrorAlert.swift
//
//
//  Created by Alex Nagy on 23.04.2024.
//

import SwiftUI

final public class ErrorAlert: ObservableObject {
    
    @Published var error: Error?
    @Published var buttonTitle: String?
    var action: (() -> Void)?

    public func present(_ error: Error, buttonTitle: String = "OK", action: (() -> Void)? = nil) {
        self.error = error
        self.buttonTitle = buttonTitle
        self.action = action
    }
}
