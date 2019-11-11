import SwiftUI


/// 📝 NOTE: We subtract `point1`'s `y` value from `point2`s (as opposed to the opposite way)
/// because values increase downwards in SwiftUI's coordinate system.
public func yDistance(between point1: CGPoint, and point2: CGPoint) -> CGFloat {
    point1.y - point2.y
}


public func angle(from point1: CGPoint, to point2: CGPoint) -> Angle {
    let xDistance = point2.x - point1.x
    let _yDistance = yDistance(between: point1, and: point2)

    let radians: CGFloat
    
    switch (xDistance, _yDistance) {
    case (0.0, 0.0):
        radians = 0.0
    case let (xDistance, _yDistance) where _yDistance == 0.0:
        radians = xDistance > 0.0 ? .pi : -.pi
    case let (xDistance, _yDistance) where xDistance == 0.0:
        radians = _yDistance > 0.0 ? (.pi / 2) : (-.pi / 2)
    default:
        radians = atan(_yDistance / xDistance)
    }
        
    return Angle(radians: Double(radians))
}



public func distance(from point1: CGPoint, to point2: CGPoint) -> CGFloat {
    let _yDistance = yDistance(between: point1, and: point2)
    let direction = angle(from: point1, to: point2)
    
    return CGFloat(_yDistance) / CGFloat(sin(direction.radians))
}



public func point(
    from point1: CGPoint,
    atDistance distance: CGFloat,
    inDirection direction: Angle
) -> CGPoint {
    let radians = direction.radians
    
    return CGPoint(
        x: point1.x + (CGFloat(cos(radians)) * distance),
        y: point1.y + (CGFloat(sin(radians)) * distance)
    )
}

