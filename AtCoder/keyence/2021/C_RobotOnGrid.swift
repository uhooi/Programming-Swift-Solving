// https://atcoder.jp/contests/keyence2021/tasks/keyence2021_c

// FIXME: WA
import Foundation

let HWK = readLine()!.split(separator: " ").map { Int($0)! }
let (H, W, K) = (HWK[0], HWK[1], HWK[2])
precondition(2 <= H && H <= 5_000)
precondition(2 <= W && W <= 5_000)
precondition(0 <= K && Double(K) <= min(Double(H * K), 2 * pow(10, 5)))

typealias HWC = (h: Int, w: Int, c: String)
let hhwwcc: [HWC] = (1...K).map { _ in
    let hwc = readLine()!.split(separator: " ")
    return HWC(h: Int(hwc[0])!, w: Int(hwc[1])!, c: String(hwc[2]))
}
precondition(hhwwcc.allSatisfy { 1 <= $0.h && $0.h <= H })
precondition(hhwwcc.allSatisfy { 1 <= $0.w && $0.w <= W })
precondition(hhwwcc.allSatisfy { ["R", "D", "X"].contains($0.c) })
