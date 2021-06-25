/**
  2 - Elimizde uzun bir cümle olsun, Bazı kelimeler tekrar edecek bir cümle düşünün. İstediğimiz ise, hangi kelimeden kaç tane kullanıldığını bulmanız.
 string = "merhaba nasılsınız . iyiyim siz nasılsınız . bende iyiyim. "
 
 */

var cumle = "merhaba nasılsınız . iyiyim siz nasılsınız . bende iyiyim. "

let words =  cumle.split { !$0.isLetter }
var counts: [String: Int] = [:]

words.forEach { counts[String($0), default: 0] += 1 }

print(counts)
