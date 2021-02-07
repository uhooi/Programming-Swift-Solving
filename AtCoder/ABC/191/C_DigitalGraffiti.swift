// https://atcoder.jp/contests/abc191/tasks/abc191_c

// FIXME: WA
let HW = readLine()!.split(separator: " ").map { Int($0)! }
let (H, W) = (HW[0] ,HW[1])
precondition(3 <= H && H <= 10)
precondition(3 <= W && W <= 10)

let sss: [[String]] = (1...H).map { _ in
    let ss = readLine()!.map { String($0) }
    return ss
}
precondition(sss.count == H)
precondition(sss.allSatisfy { $0.count == W })
precondition(sss.allSatisfy { ss in ss.allSatisfy { ["#", "."].contains($0) } })
precondition(sss[0].allSatisfy { $0 == "." })
precondition(sss[H - 1].allSatisfy { $0 == "." })
precondition(sss.allSatisfy { ss in ss[0] == "." })
precondition(sss.allSatisfy { ss in ss[W - 1] == "." })

private enum Color: String {
    case white = "."
    case black = "#"
}

var answer = 0
for i in 1...(H - 2) {
    for j in 1...(W - 2) {
        if sss[i][j] == Color.white.rawValue {
            continue
        }
        
        let upperLeft = sss[i - 1][j - 1]
        let upperMiddle = sss[i - 1][j]
        let upperRight = sss[i - 1][j + 1]
        let middleRight = sss[i][j + 1]
        let lowerRight = sss[i + 1][j + 1]
        let lowerMiddle = sss[i + 1][j]
        let lowerLeft = sss[i + 1][j - 1]
        let middleLeft = sss[i][j - 1]
        
        // ...
        // .#.
        // ...
        if upperLeft == Color.white.rawValue &&
            upperMiddle == Color.white.rawValue &&
            upperRight == Color.white.rawValue &&
            middleRight == Color.white.rawValue &&
            lowerRight == Color.white.rawValue &&
            lowerMiddle == Color.white.rawValue &&
            lowerLeft == Color.white.rawValue &&
            middleLeft == Color.white.rawValue {
            answer = 4
            break
        }
        
        // .#.
        // .#.
        // ...
        if (upperMiddle == Color.black.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) {
            answer += 2
        }
        
        // .#.
        // .#.
        // .#.
        if (upperMiddle == Color.black.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) {
            answer += 0
        }
        
        // ...
        // ##.
        // .#.
        if (upperMiddle == Color.white.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                lowerLeft == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) ||
            (upperLeft == Color.white.rawValue &&
                upperMiddle == Color.black.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) ||
            (upperMiddle == Color.black.rawValue &&
                upperRight == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                middleLeft == Color.white.rawValue) {
            answer += 2
            continue
        }
        
        // ...
        // ##.
        // ##.
        if (upperLeft == Color.white.rawValue &&
                upperMiddle == Color.white.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                lowerLeft == Color.black.rawValue &&
                middleLeft == Color.black.rawValue) ||
            (upperLeft == Color.black.rawValue &&
                upperMiddle == Color.black.rawValue &&
                upperRight == Color.white.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                lowerLeft == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) ||
            (upperLeft == Color.white.rawValue &&
                upperMiddle == Color.black.rawValue &&
                upperRight == Color.black.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerRight == Color.white.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                upperRight == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerRight == Color.black.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                lowerLeft == Color.white.rawValue &&
                middleLeft == Color.white.rawValue) {
            answer += 1
            continue
        }
        
        // .#.
        // ##.
        // .#.
        if (upperLeft == Color.white.rawValue &&
                upperMiddle == Color.black.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                lowerLeft == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) ||
            (upperLeft == Color.white.rawValue &&
                upperMiddle == Color.black.rawValue &&
                upperRight == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerMiddle == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) ||
            (upperMiddle == Color.black.rawValue &&
                middleRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                lowerLeft == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                middleLeft == Color.white.rawValue) ||
            (upperMiddle == Color.white.rawValue &&
                middleRight == Color.black.rawValue &&
                lowerRight == Color.white.rawValue &&
                lowerMiddle == Color.black.rawValue &&
                lowerLeft == Color.white.rawValue &&
                middleLeft == Color.black.rawValue) {
            answer += 2
            continue
        }
        
        // .#.
        // ###
        // .#.
        if upperLeft == Color.white.rawValue &&
            upperMiddle == Color.black.rawValue &&
            upperRight == Color.white.rawValue &&
            middleRight == Color.black.rawValue &&
            lowerRight == Color.white.rawValue &&
            lowerMiddle == Color.black.rawValue &&
            lowerLeft == Color.white.rawValue &&
            middleLeft == Color.black.rawValue {
            answer += 4
            continue
        }
    }
}
print(answer)
