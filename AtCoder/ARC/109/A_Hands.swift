// https://atcoder.jp/contests/arc109/tasks/arc109_a

let readingInts = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, x, y) = (readingInts[0], readingInts[1], readingInts[2], readingInts[3])
precondition(1 <= a && a <= 100)
precondition(1 <= b && b <= 100)
precondition(1 <= x && x <= 100)
precondition(1 <= y && y <= 100)

let minMinute: Int
if a == b || a == b + 1 {
    minMinute = x
} else {
    if (2 * x) < y {
        // すべて廊下
        if a < b {
            minMinute = (2 * (b - a) + 1) * x
        } else {
            minMinute = (2 * (a - b) - 1) * x
        }
    } else {
        // 階段で最後だけ廊下
        if a < b {
            minMinute = (b - a) * y + x
        } else {
            minMinute = (a - b - 1) * y + x
        }
    }
}
print(minMinute)
