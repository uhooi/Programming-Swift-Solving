// https://atcoder.jp/contests/abc204/tasks/abc204_c

// FIXME: WA
let NM = readLine()!.split(separator: " ").map { Int($0)! }
let (N, M) = (NM[0], NM[1])
precondition(2 <= N && N <= 2_000)
precondition(0 <= M && M <= min(2_000, N * (N - 1)))

typealias Route = (a: Int, b: Int)
let routes: [Route] = (1...M).map { _ in
    let route = readLine()!.split(separator: " ").map { Int($0)! }
    return Route(a: route[0], b: route[1])
}
precondition(routes.count == M)
precondition(routes.allSatisfy { 1 <= $0.a && $0.a <= N })
precondition(routes.allSatisfy { 1 <= $0.b && $0.b <= N })

var answer = routes.count
for city in 1...N {
    answer += goneCities(src: city, srcCities: (1...N).map({ $0 })).count
}
print(answer)

private func goneCities(src: Int, srcCities: [Int]) -> [Int] {
    guard srcCities.contains(src) else {
        return []
    }
    let afterSrcCities = srcCities.filter { $0 != src }
    var results = routes.filter { $0.a == src } .map { $0.b }
    for city in results {
        results += goneCities(src: city, srcCities: afterSrcCities)
    }
    return Array(Set(results))
}
