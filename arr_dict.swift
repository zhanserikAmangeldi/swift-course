
var fruits: [String] = ["strawberries", "limes", "tangerines"]
let dayOfWeek = ["Monday", "Tuesday", "Wednesday", "`Thursday", "Friday", "Saturday", "Sunday"]
// dayOfWeek.append("NODAY")    we cannot add anything new
// dayOfWeek.remove(0)          or remove
// dayOfWeek[1] = "Noday"       and assign new value from array

var emptyArr: [String] = [] // we must assign type, if we want to create empty array(work with any structures and types)
fruits[1] = "grapes"
fruits.append("apple")
fruits.append("banana")

var occupations: [String: String] = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
var emptyDict: [String:String] = [:]

occupations["Malcolm"] = "Mechanic N2"
occupations["Jayne"] = "Capitan"

print("Array: ")
print(fruits, "\n")
print("Slices: ")
print(fruits[..<2], fruits[2...], "\n")

print("Dictionary: ")
print(occupations)
