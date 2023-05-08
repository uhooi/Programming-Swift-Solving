// 大きなコードを分割する
// https://algo-method.com/tasks/1321

// 偏差値 (Z score) を計算する
// def float: calc_zscore(int: N, float[]: scores, float score)
//     float: average = 0.0
//     for (初期値: index = 0, 条件: index < N, 更新: index += 1)
//         average += scores[index]
//     endfor
//     average = average ÷ N の値
//     float: sd = 0.0
//     for (初期値: index = 0, 条件: index < N, 更新: index += 1)
//         sd += (scores[index] - average) * (scores[index] - average)
//     endfor
//     sd = sd ÷ N の値
//     sd = sqrt(sd)
//     float: z_score = 50 + 10 * (score - average) ÷ sd の値
//     return z_score

// 生徒の人数
// int: N = 5
// 試験の点数
// float[]: scores = [70, 50, 85, 69, 63]

// $1$ 番目の生徒の点数の偏差値を計算する
// float: z_score = calc_zscore(N, scores, scores[0])
// print(z_score)

import Foundation

func calcZScore(_ n: Int, _ scores: [Float], _ score: Float) -> Float {
    var average: Float = 0.0
    for index in 0..<n {
        average += scores[index]
    }
    average = average / Float(n)
    var sd: Float = 0.0
    for index in 0..<n {
        sd += (scores[index] - average) * (scores[index] - average)
    }
    sd = sd / Float(n)
    sd = sqrt(sd)
    let zScore: Float = 50 + 10 * (score - average) / sd
    return zScore
}

let n = 5
let scores: [Float] = [70, 50, 85, 69, 63]

let zScore = calcZScore(n, scores, scores[0])
print(zScore)
