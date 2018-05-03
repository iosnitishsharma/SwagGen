//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Object that represents an end to end journey (see schematic). */
public class Journey: Codable {

    public var arrivalDateTime: Date?

    public var duration: Int?

    public var legs: [Leg]?

    public var startDateTime: Date?

    public init(arrivalDateTime: Date? = nil, duration: Int? = nil, legs: [Leg]? = nil, startDateTime: Date? = nil) {
        self.arrivalDateTime = arrivalDateTime
        self.duration = duration
        self.legs = legs
        self.startDateTime = startDateTime
    }

    private enum CodingKeys: String, CodingKey {
        case arrivalDateTime
        case duration
        case legs
        case startDateTime
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        arrivalDateTime = try container.decodeIfPresent(.arrivalDateTime)
        duration = try container.decodeIfPresent(.duration)
        legs = try container.decodeIfPresent(.legs)
        startDateTime = try container.decodeIfPresent(.startDateTime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(arrivalDateTime, forKey: .arrivalDateTime)
        try container.encode(duration, forKey: .duration)
        try container.encode(legs, forKey: .legs)
        try container.encode(startDateTime, forKey: .startDateTime)
    }
}