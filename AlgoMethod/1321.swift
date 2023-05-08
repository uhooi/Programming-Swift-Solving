import Foundation

func average(_ scores: [Float]) -> Float {
    scores.reduce(0, +) / Float(scores.count)
}

func standardDeviation(_ scores: [Float]) -> Float {
    let average = average(scores)
    return sqrt(
        scores
            .reduce(0) { $0 + ($1 - average) * ($1 - average) }
            / Float(scores.count)
    )
}

func zScore(_ scores: [Float], _ score: Float) -> Float {
    let average = average(scores)
    let sd = standardDeviation(scores)
    return 50 + 10 * (score - average) / sd
}

let scores: [Float] = [70, 50, 85, 69, 63]

let answer = zScore(scores, scores[0])
print(answer)
