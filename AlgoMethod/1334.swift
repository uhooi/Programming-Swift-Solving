func point(day: Int, amount: Int) -> Int {
    let basePoint = amount / 100
    let isSpecialDay = (day % 10 == 5)
    return basePoint * (isSpecialDay ? 3 : 1)
}

let purchaseDays = [4, 5, 8, 18, 25]
let purchaseAmounts = [700, 1200, 3000, 600, 2800]
let pointTotal = (0..<purchaseDays.count)
    .reduce(0) { $0 + point(day: purchaseDays[$1], amount: purchaseAmounts[$1]) }
print(pointTotal)
