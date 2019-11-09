import SwiftUI


func angle(from pointA: CGPoint, to pointB: CGPoint) -> Angle {
    let xDistance = pointA.x - pointB.x
    let yDistance = pointA.y - pointB.y

    let radians: CGFloat
    
    switch (xDistance, yDistance) {
    case (0, 0):
        radians = 0
    case let (xDistance, yDistance) where yDistance == 0:
        radians = xDistance > 0 ? .pi : -.pi
    case let (xDistance, yDistance) where xDistance == 0:
        radians = yDistance > 0 ? (.pi / 2) : (-.pi / 2)
    default:
        radians = atan(yDistance / xDistance)
    }
        
    return Angle(radians: Double(radians))
}



func distance(from pointA: CGPoint, to pointB: CGPoint) -> CGFloat {
    let yDistance = pointA.y - pointB.y
    let direction = angle(from: pointA, to: pointB)
    
    return CGFloat(yDistance) / CGFloat(sin(direction.radians))
}
