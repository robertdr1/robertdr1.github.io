class t_multime{
  var elemente:[Int]


  init()
  {
    elemente = []
  }

  init(_ a: Int)
  {
    elemente = [a]
  }

  init(_ a: t_multime)
  {
    elemente = a.elemente
  }

  deinit{
    elemente = []
  }

  func exista(_ a: Int)->Bool
  {
    for x in elemente{
      if a == x{
      return true
      }
    }
    return false
  }

  func adauga(_ a: Int)
  {
    if !exista(a){
      elemente += [a]
    }
  }

  func tipareste()
  {
    for x in elemente
    {
      print(x)
    }
  }
  // m += 5
  static func +=(st: t_multime, dr: Int)
  {
    st.adauga(dr)
  }

  //c = a +b 
 static func +(st: t_multime, dr: t_multime)->t_multime
  {
    let tmp = t_multime(st)
    for x in dr.elemente{
      tmp += x
    }
    return tmp
  }
}

enum t_cazuri_testare{
  case ct_implicit, ct_param, adauga, operator_pe, operator_p
}


var caz_curent = t_cazuri_testare.ct_implicit

switch caz_curent{
  case .ct_implicit:
  let m = t_multime()
  m.tipareste()
  case .ct_param:
  let m = t_multime(5)
  m.tipareste()
  case .adauga:
  let m = t_multime(5)
  m.adauga(4)
  m.tipareste()
  case .operator_pe:
  let m = t_multime(5)
  m += 4
  m.tipareste()
  case .operator_p:
  let m1 = t_multime(5)
  let m2 = t_multime(4)
  var m3 = t_multime(3)
  m3 = m1 + m2
  m3.tipareste()
}
let m = t_multime()
m.adauga(3)
m.adauga(2)
m.adauga(3)
m += 5

m.tipareste()