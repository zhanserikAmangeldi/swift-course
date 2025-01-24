func greeting(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}


func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}

var numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(greeting(person: "Zhanserik", day: "Monday"))

let statistics: (min: Int, max: Int, sum: Int) = calculateStatistics(
    scores: [5, 3, 100, 3, 9]
)

print(statistics.sum)
print(statistics.2)

var increment = makeIncrement()
print(increment(8))

var evenNumbers = numbers.map({ (number: Int) -> Int in
    if number % 2 == 0{
        return number
    } else {
        return 0
    }
})

let mappedNumbers = numbers.map({ number in 3 * number })

print(evenNumbers)
print(mappedNumbers)

