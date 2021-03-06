//Even Fibonacci numbers

//Euler 2
/*Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
*/


//fibonacci serisinin ilk 2 elemanını tanımladım:
var x = 1
var y = 2

//döngüde kullanacağım yeni değişkeni initialize ettim
var z = 0

//istenilen toplamın başlangıç değeri olarak 2 tanımladım: aşağıdaki döngü 3 ten başlayacağı için ilk elemanını kendim yerleştirmiş oldum)
var sum = 2

//serinin diğer elemanlarını bulmak için döngüyü oluşturdum:
while true {
  z = x+y
  x = y
  y = z
  
  //değeri 4 milyonu geçmeyenleri aldım:
  if (z>4000000){
    break
  }
  //içlerinden çift olanları sum'a ekledim:
  else if (z%2 == 0){
    sum += z
    //print("z is \(z)")
  }

}

//Sonucu yazdırdım:
print(sum)
