import Foundation

struct Coord {
    let x: Float
    let y: Float
}

func distance(_ lhs: Coord, _ rhs: Coord) -> Float {
    sqrt(pow((lhs.x - rhs.x), 2) + pow((lhs.y - rhs.y), 2))
}

let coords: [Coord] = [.init(x: 3, y: 4), .init(x: 2, y: 5), .init(x: 6, y: 3)]
let distSum = distance(coords[0], coords[1]) + distance(coords[0], coords[2]) + distance(coords[1], coords[2])
print(distSum)
