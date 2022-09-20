// Q. 同じ部屋にいた時間
// https://algo-method.com/tasks/1088

// MARK: Functions

private func readInt2() -> (Int, Int) {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    precondition(values.count == 2)
    return (values[0], values[1])
}

// MARK: Inputs

let (sa, ta) = readInt2()
precondition(1 <= sa && sa <= ta && ta <= 100)

let (sb, tb) = readInt2()
precondition(1 <= sb && sb <= tb && tb <= 100)

// MARK: Main

let answer: Int
if ta <= sb || tb <= sa {
    answer = 0
} else if sb <= sa {
    if ta <= tb {
        answer = ta - sa
    } else {
        answer = tb - sa
    }
} else if sa <= sb {
    if tb <= ta {
        answer = tb - sb
    } else {
        answer = ta - sb
    }
} else {
    answer = 0
}
print(answer)

