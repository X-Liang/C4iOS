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

import Foundation
import CoreGraphics
import C4Core

extension Shape {
    func addCircle(center: CGPoint, radius: CGFloat) {
        if path == nil {
            path = Path()
        }

        let rect = CGRectMake(center.x - radius, center.y - radius, radius*2, radius*2)
        path!.addEllipse(rect)
    }

    func addPolygon(points: [CGPoint], closed: Bool = true) {
        if path == nil {
            path = Path()
        }

        if !points.isEmpty {
            path!.moveToPoint(points[0])
        }
        for point in points {
            path!.addLineToPoint(point)
        }
        if closed {
            path!.closeSubpath()
        }
    }

    func addLine(start: CGPoint, stop: CGPoint) {
        if path == nil {
            path = Path()
        }
        
        path!.moveToPoint(start)
        path!.addLineToPoint(stop)
    }
}