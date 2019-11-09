import XCTest
@testable import CypherPoetMathUtils_Algebra


final class GCDTests: XCTestCase {
}


extension GCDTests {
    
    func testOneAndOne() {
        let a = 1
        let b = 1
        
        let expected = 1
        let actual = gcd(a, b: b)
            
        XCTAssertEqual(actual, expected)
    }
    
    
    func test88And983() {
        let a = 88
        let b = 983
        
        let expected = 1
        let actual = gcd(a, b: b)
            
        XCTAssertEqual(actual, expected)
    }
    
    
    
    func test380And9820() {
        let a = 380
        let b = 9820
        
        let expected = 20
        let actual = gcd(a, b: b)
            
        XCTAssertEqual(actual, expected)
    }
}
