// https://atcoder.jp/contests/abc191/tasks/abc191_c

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

var answer = 0
for i in 0...(H - 2) {
    for j in 0...(W - 2) {
        let upperLeft = sss[i][j]
        let upperRight = sss[i][j + 1]
        let lowerRight = sss[i + 1][j + 1]
        let lowerLeft = sss[i + 1][j]
        let squares = [upperLeft, upperRight, lowerRight, lowerLeft]
        
        let blackSquareCount = squares.filter { $0 == "#" } .count
        if blackSquareCount == 1 || blackSquareCount == 3 {
            answer += 1
        }
    }
}
print(answer)
