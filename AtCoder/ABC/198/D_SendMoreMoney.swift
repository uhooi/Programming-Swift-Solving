// https://atcoder.jp/contests/abc198/tasks/abc198_d

// FIXME: TLE
let ss = (1...3).map { _ in readLine()! }
let (S1, S2, S3) = (ss[0], ss[1], ss[2])
precondition(1 <= S1.count && S1.count <= 10)
precondition(1 <= S2.count && S2.count <= 10)
precondition(1 <= S3.count && S3.count <= 10)

var answer: [Int] = []
let existingAlphabets = Set((S1 + S2 + S3).map { String($0) })
if existingAlphabets.count > 10 {
    print("UNSOLVABLE")
} else {
    for numbers in permutations(of: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) {
        for number in numbers {
            var dictionary: [String: Int] = [:]
            for alphabet in existingAlphabets {
                dictionary[alphabet] = number
            }
            let s1String = S1.map { String(dictionary[String($0)]!) } .joined()
            let s2String = S2.map { String(dictionary[String($0)]!) } .joined()
            let s3String = S3.map { String(dictionary[String($0)]!) } .joined()
            if s1String.prefix(1) == "0" || s2String.prefix(1) == "0" || s3String.prefix(1) == "0" {
                break
            }
            let s1 = Int(s1String)!
            let s2 = Int(s2String)!
            let s3 = Int(s3String)!
            if s1 + s2 == s3 {
                answer = [s1, s2, s3]
                break
            }
        }
        if !answer.isEmpty {
            break
        }
    }
    if answer.isEmpty {
        print("UNSOLVABLE")
    } else {
        answer.forEach { print($0) }
    }
}

private func permutations<T>(of values: [T]) -> [[T]] {
    if values.count <= 1 {
        return [values]
    }
    var results: [[T]] = []
    for i in values.indices {
        let baseValue = values[i]
        var excludingBaseValue = values
        excludingBaseValue.remove(at: i)
        results += permutations(of: excludingBaseValue).map { [baseValue] + $0 }
    }
    return results
}
