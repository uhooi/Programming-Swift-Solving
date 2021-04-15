// https://atcoder.jp/contests/abc198/tasks/abc198_d

// FIXME: TLE
let ss = (1...3).map { _ in readLine()! }
let (S1, S2, S3) = (ss[0], ss[1], ss[2])
precondition(1 <= S1.count && S1.count <= 10)
precondition(1 <= S2.count && S2.count <= 10)
precondition(1 <= S3.count && S3.count <= 10)

let existingAlphabets = Array(Set((S1 + S2 + S3).map { String($0) }))
let s1Indices = S1.map { existingAlphabets.firstIndex(of: String($0))! }
let s2Indices = S2.map { existingAlphabets.firstIndex(of: String($0))! }
let s3Indices = S3.map { existingAlphabets.firstIndex(of: String($0))! }

if existingAlphabets.count > 10 {
    print("UNSOLVABLE")
} else {
    var answer: [Int] = []
    for numbers in permutations(of: (0...9)) {
        if numbers[s1Indices[0]] == 0 || numbers[s2Indices[0]] == 0 || numbers[s3Indices[0]] == 0 {
            continue
        }
        let s1 = s1Indices.map { numbers[$0] } .reduce(0) { x, y in x * 10 + y }
        let s2 = s2Indices.map { numbers[$0] } .reduce(0) { x, y in x * 10 + y }
        let s3 = s3Indices.map { numbers[$0] } .reduce(0) { x, y in x * 10 + y }
        if s1 + s2 == s3 {
            answer = [s1, s2, s3]
            break
        }
    }
    if answer.isEmpty {
        print("UNSOLVABLE")
    } else {
        answer.forEach { print($0) }
    }
}

private func permutations<S: Sequence>(of values: S) -> [[S.Element]] {
    let values = Array(values)
    if values.count <= 1 {
        return [values]
    }
    var results: [[S.Element]] = []
    for i in values.indices {
        var subResults = permutations(of: values[..<i] + values[(i + 1)...])
        for j in subResults.indices {
            subResults[j].append(values[i])
        }
        results.append(contentsOf: subResults)
    }
    return results
}
