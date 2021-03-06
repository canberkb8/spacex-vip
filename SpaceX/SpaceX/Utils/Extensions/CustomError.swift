import Foundation

enum CustomError: Error {
    case notFound
    case unexpected(code: Int)
    case internetConnection
}

extension CustomError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .notFound:
            return NSLocalizedString(
                "The specified item could not be found.",
                comment: "Resource Not Found"
            )
        case .unexpected(code: let code):
            if (code == 400) {
                return NSLocalizedString(
                    "Bad request.",
                    comment: "Bad Request"
                )
            }
            return NSLocalizedString(
                "An unexpected error occurred.",
                comment: "Unexpected Error"
            )
        case .internetConnection:
            return NSLocalizedString(
                "There was a problem with your internet connection.",
                comment: "Connection Error"
            )
        }
    }
}
