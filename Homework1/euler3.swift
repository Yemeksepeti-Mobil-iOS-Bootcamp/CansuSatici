/*
 
Largest prime factor

Euler Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
*/

//for test:
//var numToFactor=13195


var primeFactor = 2
var bigNumber=600851475143

while bigNumber > 1 {
    if (bigNumber % primeFactor == 0) {
        bigNumber /= primeFactor
    }
    else {
        primeFactor += 1
    }

    }

print(primeFactor)
