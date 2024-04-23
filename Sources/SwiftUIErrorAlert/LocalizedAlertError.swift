//
//  LocalizedAlertError.swift
//
//
//  Created by Alex Nagy on 23.04.2024.
//

import Foundation

struct LocalizedAlertError: LocalizedError {
    
    let underlyingError: LocalizedError
    
    var errorDescription: String? {
        underlyingError.errorDescription
    }
    var failureReason: String? {
        underlyingError.failureReason
    }
    var recoverySuggestion: String? {
        underlyingError.recoverySuggestion
    }
    var helpAnchor: String? {
        underlyingError.helpAnchor
    }

    init?(error: Error?) {
        guard let localizedError = error as? LocalizedError else { return nil }
        underlyingError = localizedError
    }
}
