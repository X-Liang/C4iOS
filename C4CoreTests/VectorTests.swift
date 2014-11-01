// Copyright © 2014 C4
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

import XCTest

class VectorTests: XCTestCase {
    func testUnitVector() {
        let vector = Vector(x: 8, y: 8)
        let unitVector = vector.unitVector()
        XCTAssertEqualWithAccuracy(unitVector.magnitude, 1, 1e-15, "Magnitude of unit vector should be 1")
        XCTAssertEqual(unitVector.heading, vector.heading, "Heading of unit vector should be the same as the original")
    }
    
    func testDotProduct() {
        let vectorA = Vector(x: 1, y: 0)
        let vectorB = Vector(x: 0, y: 1)
        XCTAssertEqualWithAccuracy(vectorA ⋅ vectorB, 0, 1e-15, "Dot product of perpendicular vectors should be 0")
    }
}
