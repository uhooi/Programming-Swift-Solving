// https://atcoder.jp/contests/tenka1-2015-qualb/tasks/tenka1_2015_qualB_a

let a0 = 100
let a1 = 100
let a2 = 200
var aa = [a0, a1, a2]
for n in 3...19 {
    aa.append(aa[n - 1] + aa[n - 2] + aa[n - 3])
}
print(aa[19])
