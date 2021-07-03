import Foundation

//BallShooter is used to define the range
//Player throws the ball and if the ball drops at the right range, it hits the bottle and the player gain points

//player has name and score attributes
struct Player {
    var name: String
    var score: Int = 0
}

//Bottle will be hit by the ball
struct Bottle {
    var distance: Double
    //delta depends on the volume of the bottle
    var delta: Double
    //bottle area is the the area that bottle itself covered
    var bottleArea: Double {
        
        guard delta >= 0.1 && delta <= 1.0 else {
            return 0.0
        }
        return delta
    }
}


//if the range is betweeen d-delta<R<d+delta, bottle will be hit
struct BallShooter {
    var range: Double
}

struct Game {
    
    var player: Player?
    var ballShooter: BallShooter?
    var bottle: Bottle?
    
    init(player: Player? = nil, ballShooter: BallShooter? = nil, bottle: Bottle? = nil) {
        self.player = player
        self.ballShooter = ballShooter
        self.bottle = bottle
    }
    
//classes are reference type whereas structures are value types. The properties of value types cannot be modified within its instance methods by default. In order to modify the properties of a value type, we have to use the mutating keyword in the instance method:
    
    mutating func setName(name: String) {
        self.player = Player(name: name)
    }
    
    //showing the score results
    func theScore() {
        print("Player \(player?.name ?? "")")
        print("Score = \(player?.score ?? 0)")
    }
    
    mutating func setBottleLocation(distance: Double,delta: Double) {
        if distance >= 0.0 && distance <= 1500.0 {
            self.bottle = Bottle(distance: distance, delta: delta)
        } else {
            print("The value of d is out of range, it should be between 0-1500")
            self.bottle = Bottle(distance: 0.0, delta: delta)
        }
    }
    
    mutating func setRange(teta: Double, v: Double) {
        if (teta >= 0.0 && teta <= 90.0) && (v >= 0.0 && v <= 100.0) {
            let r = v * v * sin(teta * Double.pi / 180) / 10
            self.ballShooter = BallShooter(range: r)
        } else {
            //if the entered values is not the right ranges
            self.ballShooter = BallShooter(range: 0.0)
        }
    }
    
    mutating func throwBall() {
        guard let bottle = bottle,
              let ballShooter = ballShooter else { return }
        //check if the ball hit the bottle:
        if ballShooter.range >= (bottle.distance - bottle.bottleArea) && ballShooter.range <= (bottle.distance + bottle.bottleArea) {
            //if the ball hits, increase the score by 1
            player?.score += 1
            print("Congratulations you hit the ball!")
        } else {
            //if the ball didn't hit,don't change anything
            print("Sorry you missed it, try one more time!")
        }
    }

}
    



var newGame = Game()

newGame.setName(name: "Player1")
newGame.setBottleLocation(distance: 323.0,delta: 0.7)
newGame.setRange(teta: 47, v: 70)
newGame.throwBall()
newGame.theScore()

newGame.setBottleLocation(distance: 345.0,delta: 0.7)
newGame.setRange(teta: 44, v: 71)
newGame.throwBall()
newGame.throwBall()
newGame.theScore()
