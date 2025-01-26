enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs


    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

func compareRanks(firstRank: Rank, secondRank: Rank) -> Rank {
    if firstRank.simpleDescription() > secondRank.simpleDescription() {
        return firstRank
    } else {
        return secondRank
    }
}

let ace = Rank.two
print(type(of: ace.simpleDescription()))


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

print(threeOfSpades, threeOfSpadesDescription)

func getFullDeck() -> [Card] {
    var deck: [Card] = []

    let suits = [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs]
    let cards = [
        Rank.ace, Rank.two, Rank.three, 
        Rank.four, Rank.five, Rank.six, 
        Rank.seven, Rank.eight, Rank.ten,
        Rank.jack, Rank.queen, Rank.king
    ]

    for suit in suits {
        for card in cards {
            deck.append(Card.init(rank: card, suit: suit))
        }
    }

    return deck
}

let decks = getFullDeck()
print("Full deck: \n")
for i in 1..<48 {
    print(decks[i])
}