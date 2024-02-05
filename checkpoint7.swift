class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    override init(legs: Int) {
        super.init(legs: legs)
    }
    func speak() {
        print("woo woo")
    }
}

class Cat: Animal {
    var isTame: Bool
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func speak() {
        print("meow meow")
    }
}

class Corgie: Dog {
    override init(legs: Int) {
        super.init(legs: legs)
    }
    override func speak() {
        print("cor cor")
    }
}

class Poodle: Dog {
    override init(legs: Int) {
        super.init(legs: legs)
    }
    override func speak() {
        print("poo poo")
    }
}


class Persion: Cat {
    override init(isTame: Bool, legs: Int) {
        super.init(isTame: isTame, legs: legs)
    }
    override func speak() {
        print("per per")
    }
}

class Lion: Cat {
    override init(isTame: Bool, legs: Int) {
        super.init(isTame: isTame, legs: legs)
    }
    override func speak() {
        print("lio lio")
    }
}


var lion = Lion(isTame: false, legs: 4)
lion.speak()

var poodle = Poodle(legs: 4)
poodle.speak()
