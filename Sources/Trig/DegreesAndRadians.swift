import Foundation


public func degrees(fromRadians radians: Double) -> Double {
    (180.0 / .pi) * radians
}


public func radians(fromDegrees degrees: Double) -> Double {
    (.pi / 180) * degrees
}
