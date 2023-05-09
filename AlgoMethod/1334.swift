func calcPoint(day: Int, amount: Int) -> Int {
    var point = amount / 100
    let isSpecialDay = (day % 10 == 5)
    if isSpecialDay {
        point *= 3
    }
    return point
}

let purchaseDayList = [4, 5, 8, 18, 25]
let purchaseAmountList = [700, 1200, 3000, 600, 2800]
var pointTotal = 0
for index in 0..<purchaseDayList.count {
    let day = purchaseDayList[index]
    let amount = purchaseAmountList[index]
    pointTotal += calcPoint(day: day, amount: amount)
}
print(pointTotal)
