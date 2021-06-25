/**

 1- Elimizde sadece harflerden oluşan (noktalama işareti veya sayılar yok) uzun karakterler olsun. Bu karekterlerin içinde bazı hafrflerin tekrar edeceğini düşünün. Mesela 'a ' harfi 20 farklı yerde geçiyor. Bir fonksiyon ile verilen parametre değerine eşit ve daha fazla bulunan harfler silinecektir. Sonra geriye kalan string ekrana yazdırılacaktır. Not boşluklar sayılmayacak:)
 
 Örnek string: "aaba kouq bux"
 Tekrar sayısı 2 verildiğinde : a,b,u silinmeli ve ekrana "koq x" yazmalı
 Tekrar sayısı 3 verildiğinde : a silinmeli ve ekrana "b kouq bux"
 tekrar sayısı 4 verildiğinde  :  hiç bir harf silinmemeli aynı stringi yazmalı
 
 Not: String ve tekrar sayısını parametre olarak alsın. func (myString, count)
 kelimelerin arasindaki bosluk kalacak

 */
var cumle = "aaba kouq bux"
var givenNum=3

let char: Character = "a"
let charCount = cumle.filter { $0 == char }.count

for harf in cumle{
    let char: Character = harf
    let charCount = cumle.filter { $0 == char }.count
    
    if(charCount >= givenNum){
        cumle=String(cumle.filter { !String(harf).contains($0) })
    }
}
 
print(cumle)
//cikti: b kouq bux
