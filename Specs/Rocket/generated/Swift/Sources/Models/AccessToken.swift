//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AccessToken: Codable, Equatable {

    /** The type of the token. */
    public enum `Type`: String, Codable {
        case userAccount = "UserAccount"
        case userProfile = "UserProfile"

        public static let cases: [`Type`] = [
          .userAccount,
          .userProfile,
        ]
    }

    /** The token value used for authenticated requests. */
    public var value: String

    /** True if this token can be refreshed, false if not. */
    public var refreshable: Bool

    /** The timestamp this token expires. */
    public var expirationDate: DateTime

    /** The type of the token. */
    public var type: `Type`

    public init(value: String, refreshable: Bool, expirationDate: DateTime, type: `Type`) {
        self.value = value
        self.refreshable = refreshable
        self.expirationDate = expirationDate
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case value
        case refreshable
        case expirationDate
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        value = try container.decode(.value)
        refreshable = try container.decode(.refreshable)
        expirationDate = try container.decode(.expirationDate)
        type = try container.decode(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(value, forKey: .value)
        try container.encode(refreshable, forKey: .refreshable)
        try container.encode(expirationDate, forKey: .expirationDate)
        try container.encode(type, forKey: .type)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AccessToken else { return false }
      guard self.value == object.value else { return false }
      guard self.refreshable == object.refreshable else { return false }
      guard self.expirationDate == object.expirationDate else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: AccessToken, rhs: AccessToken) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
