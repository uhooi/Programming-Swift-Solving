// https://atcoder.jp/contests/arc111/tasks/arc111_b

// FIXME: WA
let n = Int(readLine()!)!
precondition(1 <= n && n <= 200_000)

typealias Card = (a: Int, b: Int)
let aabb: [Card] = (1...n).map { _ in
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    return Card(a: ab[0], b: ab[1])
}
precondition(aabb.allSatisfy { 1 <= $0.a && $0.a <= 400_000 })
precondition(aabb.allSatisfy { 1 <= $0.b && $0.b <= 400_000 })

var answerASets: Set<Int> = []
for ab in aabb {
    if !answerASets.contains(ab.a) {
        answerASets.insert(ab.a)
    } else if !answerASets.contains(ab.b) {
        answerASets.insert(ab.b)
    }
}

var answerBSets: Set<Int> = []
for ab in aabb {
    if !answerBSets.contains(ab.b) {
        answerBSets.insert(ab.b)
    } else if !answerBSets.contains(ab.a) {
        answerBSets.insert(ab.a)
    }
}

let answer = answerASets.count >= answerBSets.count ? answerASets.count : answerBSets.count
print(answer)
