func sign(_ n: Int) -> String {
    if n > 0 {
        return "positive"
    } else if n < 0 {
        return "negative"
    } else {
        return "zero"
    }
}

print(sign(3))
print(sign(-1))
print(sign(0))
print(sign(1))
print(sign(-13))
