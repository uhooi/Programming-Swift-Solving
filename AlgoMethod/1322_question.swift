// 複雑なプログラムを書き直す
// https://algo-method.com/tasks/1322

// 整数の符号 (正・負・ゼロ) を返す関数
// def str: sign(int: n)
//     return ("positive" if n > 0 else ("negative" if n < 0 else "zero"))
//
// print(sign(3))
// print(sign(-1))
// print(sign(0))
// print(sign(1))
// print(sign(-13))

func sign(_ n: Int) -> String {
    n > 0 ? "positive" : (n < 0 ? "negative" : "zero")
}

print(sign(3))
print(sign(-1))
print(sign(0))
print(sign(1))
print(sign(-13))
