class Shape {
    var numOfSides = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func show() -> String {
        return "Shape with name \(self.name) has \(numOfSides) sides"
    }
}

class Square: Shape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numOfSides = 4 // blyat kak eto rabotaet, suka ya by etoi huine ne doverial
    }

    func area() -> Double {
        return self.sideLength * self.sideLength
    }

    override func show() -> String {
        return "Square with name \(self.name) has \(numOfSides) sides   "
    }
}

var s1 = Shape(name: "Triangle")
s1.numOfSides = 10
var square1 = Square(sideLength: 8 ,name: "Simple")
print(square1.area())
print(square1.show())

print(s1.show())
