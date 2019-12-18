// lambda , clossure
func sorteaza(_ a: inout [Int],_ criteriu: (_ x: Int,_ y: Int)->Bool)
{
  // metoda bulelor
  var sortate = false
  repeat{
    var i = 0
    sortate = true
    while i < a.count - 1
    {
      if criteriu(a[i], a[i + 1]){
        let tmp = a[i]
        a[i] = a[i + 1]
        a[i + 1] = tmp
        sortate = false
      }
      i += 1
    }
    }while !sortate
}

var a = [1, 2, -1]
// 1. functie externa completa
/*
func criteriu1(_ x: Int,_ y: Int)->Bool
{
  if x < y{
    return true
  }
  else{
    return false
  }
}
sorteaza(&a, criteriu1)
*/

// 2.stocare functie in variabila
/*
var criteriu1 = {
  (_ x: Int,_ y: Int)->Bool in

  if x < y{
    return true
  }
  else{
    return false
  }
}

sorteaza(&a, criteriu1)
*/

// 3. cod in parametrii
/*
sorteaza(&a, {
  (_ x: Int,_ y: Int)->Bool in

  if x < y{
    return true
  }
  else{
    return false
  }
})*/
//4. trailing clossure
/*
sorteaza(&a) {
  (_ x: Int,_ y: Int)->Bool in

  if x < y{
    return true
  }
  else{
    return false
  }
}
*/
// 5. cod mai simplu
/*
sorteaza(&a) {
  (_ x: Int,_ y: Int)->Bool in
   return x < y
}
*/
// 6. fara return
/*
sorteaza(&a) {
  (_ x: Int,_ y: Int)->Bool in
   x < y
}
*/
//7. fara tip
/*
sorteaza(&a) {
  x, y in x < y
}
*/
// 8. fara nume parametrii
sorteaza(&a) {
  $0 > $1
}
for i in a{
  print(i)
}