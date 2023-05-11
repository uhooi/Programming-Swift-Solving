import Foundation

func distance(_ lhs: (x: Float, y: Float), _ rhs: (x: Float, y: Float)) -> Float {
    sqrt(pow((lhs.x - rhs.x), 2) + pow((lhs.y - rhs.y), 2))
}

let xCoord: [Float] = [3, 2, 6]
let yCoord: [Float] = [4, 5, 3]
var distSum: Float = 0.0
distSum += distance((xCoord[0], yCoord[0]), (xCoord[1], yCoord[1]))
distSum += distance((xCoord[0], yCoord[0]), (xCoord[2], yCoord[2]))
distSum += distance((xCoord[1], yCoord[1]), (xCoord[2], yCoord[2]))
print(distSum)
