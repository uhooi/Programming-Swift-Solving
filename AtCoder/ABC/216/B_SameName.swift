// https://atcoder.jp/contests/abc216/tasks/abc216_b

let N = Int(readLine()!)!
precondition(2 <= N && N <= 1_000)

typealias Person = (familyName: String, firstName: String)
let persons: [Person] = (1...N).map { _ in
    let person = readLine()!.split(separator: " ").map { String($0) }
    return Person(familyName: person[0], firstName: person[1])
}
precondition(persons.count == N)
precondition(persons.allSatisfy { 1 <= $0.familyName.count && $0.familyName.count <= 10 })
precondition(persons.allSatisfy { 1 <= $0.firstName.count && $0.firstName.count <= 10 })

var answer = false
var tmpPersons = persons
for _ in 0..<persons.count {
    let tmpPerson = tmpPersons.popLast()
    if tmpPersons.contains(where: { $0.familyName == tmpPerson?.familyName && $0.firstName == tmpPerson?.firstName }) {
        answer = true
        break
    }
}
print(answer ? "Yes" : "No")
