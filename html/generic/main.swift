class t_multime<T>{
  var elemente:[T]


  init()
  {
    elemente = []
  }

  init(_ a: T)
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

  func exista(_ a: T,_ egale: (T, T)->Bool)->Bool
  {
    for x in elemente{
      if egale(a, x){
      return true
      }
    }
    return false
  }

  func adauga(_ a: T,_ egale: (T, T)->Bool)
  {
    if !exista(a, egale){
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
}

enum t_cazuri_testare{
  case ct_implicit, ct_param, adauga}

func egale_int(_ a: Int,_ b: Int)->Bool
{
  return a == b
}

var caz_curent = t_cazuri_testare.ct_implicit

switch caz_curent{
  case .ct_implicit:
  let m = t_multime<Int>()
  m.tipareste()
  case .ct_param:
  let m = t_multime<Int>(5)
  m.tipareste()
  case .adauga:
  let m = t_multime<Int>(5)
  m.adauga(4, egale_int)
  m.tipareste()
}

