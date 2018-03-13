import Foundation

public struct Mega:Codable, CustomStringConvertible {
    
    var d1:Int
    var d2:Int
    var d3:Int
    var d4:Int
    var d5:Int
    var d6:Int
    
    enum CodingKeys: String, CodingKey {
        case d1
        case d2
        case d3
        case d4
        case d5
        case d6
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.d1 = try container.decode(Int.self, forKey: CodingKeys.d1)
        self.d2 = try container.decode(Int.self, forKey: CodingKeys.d2)
        self.d3 = try container.decode(Int.self, forKey: CodingKeys.d3)
        self.d4 = try container.decode(Int.self, forKey: CodingKeys.d4)
        self.d5 = try container.decode(Int.self, forKey: CodingKeys.d5)
        self.d6 = try container.decode(Int.self, forKey: CodingKeys.d6)
    }
    
    public var description: String {
        return """
        {
        d1:\(d1),
        d2:\(d2),
        d3:\(d3),
        d4:\(d4),
        d5:\(d5),
        d6:\(d6)
        }
        """
    }
}
