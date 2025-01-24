
var grades = [9, 8, 10, 15, 13, 34]
var sum = 0

for grade in grades {
    sum += grade
}

if sum >= 90 {
    print("A")
} else if sum >= 75 {
    print("B")
} else if sum >= 60 {
    print("C")
} else if sum >= 50 {
    print("D")
} else {
    print(50)
}

let alphabetGrade: String = if sum >= 90 {
    "A"
} else if sum >= 75 {
    "B"
} else if sum >= 60 {
    "C"
} else if sum >= 50 {
    "D"
} else {
    "F"
}

print(alphabetGrade)


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)