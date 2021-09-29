// Q3-3. 友達の友達
// https://algo-method.com/tasks/413

// MARK: Functions

private func readInt3() -> (Int, Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 3)
    return (values[0], values[1], values[2])
}

private func readNewLineInt2Array(_ count: Int) -> [(Int, Int)] {
    precondition(count >= 1)
    return (1...count).map { _ in
        let values = readLine()!.split(separator: " ").map { Int(String($0))! }
        precondition(values.count == 2)
        return (values[0], values[1])
    }
}

// MARK: Inputs

let (N, M, X) = readInt3()
precondition(2 <= N && N <= 100_000)
precondition(0 <= M && M <= min((N * (N - 1)) / 2, 100_000))
precondition(0 <= X && X <= N - 1)

let aabb = readNewLineInt2Array(M)
precondition(aabb.count == M)
precondition(aabb.allSatisfy { (a, b) in 0 <= a && a < b && b <= N - 1 })

// MARK: Main

var arurusFriends: [Int] = []
for (a, b) in aabb {
    if a == X {
        arurusFriends.append(b)
    }
    if b == X {
        arurusFriends.append(a)
    }
}

var friends: [[Int]] = .init(repeating: [], count: N)
for (a, b) in aabb {
    friends[a].append(b)
    friends[b].append(a)
}

var answers: Set<Int> = []
for a in 0..<N where friends[a].contains(X) {
    friends[a].lazy.filter { !arurusFriends.contains($0) && $0 != X } .forEach { friend in
        answers.insert(friend)
    }
}
print(answers.count)
