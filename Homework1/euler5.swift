/*
 Smallest multiple

 Problem 5
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 
 */

var num=1

func ortakBolenBul(_ num1: Int, _ num2: Int) -> Int {

    let kalan = num1 % num2
    if kalan != 0 {
        return ortakBolenBul(num2, kalan)
    } else {
        return num2
    }
}


for i in (1...20).reversed(){
    var ortakBolen=ortakBolenBul(num,i)
    var count=i/ortakBolen
    
    if (num % i != 0){
        //print(i)
        num*=count
    }
}

print(num)
