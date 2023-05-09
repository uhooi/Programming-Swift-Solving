// 変数を用いて処理を分割する
// https://algo-method.com/tasks/1334

// def int: calc_point(int: day, int: amount)
//     int: point = amount ÷ 100 の商
//     if (day % 10 == 5)
//         point *= 3
//     endif
//     return point
//
// int[]: purchase_day_list = [4, 5, 8, 18, 25]
// int[]: purchase_amount_list = [700, 1200, 3000, 600, 2800]
// int: point_total = 0
// for (初期値: index = 0, 条件: index < (purchase_day_list の長さ), 更新: index += 1)
//     day = purchase_day_list[index]
//     amount = purchase_amount_list[index]
//     point_total += calc_point(day, amount)
// endfor
// print(point_total)

func calcPoint(day: Int, amount: Int) -> Int {
    var point = amount / 100
    if day % 10 == 5 {
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
