import XCTest
@testable import CypherPoetMathUtils_Trig


final class DegreesAndRadiansTests: XCTestCase {
}


extension DegreesAndRadiansTests {
    
    func testRadiansToDegrees() {
//        var radians: Double = 2 * .pi
//        var expected: Double = 360
        
        XCTAssertEqual(degrees(fromRadians: 0), 0)
        XCTAssertEqual(degrees(fromRadians: .pi / 2), 90)
        XCTAssertEqual(degrees(fromRadians: .pi), 180)
        XCTAssertEqual(degrees(fromRadians: 2 * .pi), 360)
    }
 
    
    func testDegreesToRadians() {
        XCTAssertEqual(radians(fromDegrees: 0), 0)
        XCTAssertEqual(radians(fromDegrees: 90), .pi / 2)
        XCTAssertEqual(radians(fromDegrees: 180), .pi)
        XCTAssertEqual(radians(fromDegrees: 360), 2 * .pi)
    }
}
