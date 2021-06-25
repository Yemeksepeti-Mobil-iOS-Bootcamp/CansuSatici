/*
Largest palindrome product
Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
 */


var biggestPalindrome=0
var biggestFound=false

for i in (100...999).reversed(){
    for j in (100...999).reversed(){
        let num = i * j
        let strNum = String(num)
        if (strNum == String(strNum.reversed())){
            biggestPalindrome=num
            biggestFound=true
            break
        }
    }
    if(biggestFound==true){
        break
    }
}
print(biggestPalindrome)
