class t_persoana{
  var nume: String
  var cnp: UInt64


  init()
  {
    nume = ""
    cnp = 1234567890123
  }


  init(_ nume: String, _ cnp: UInt64)
  {
    self.nume = nume
    self.cnp = cnp
  }

  func egale(_ p: t_persoana)->Bool
  {
    return cnp == p.cnp && nume == p.nume
  }

  func tipareste()
  {
    print("\(nume) \(cnp)")
  }
}

class t_student: t_persoana{
var facultate: String

override init()
  {
    facultate = ""
    super.init()
  }

  init(_ nume: String,_ cnp: UInt64,_ facultate: String)
  {
    self.facultate = facultate
    super.init(nume, cnp)
  }

  func egale(_ p: t_student)->Bool
  {
    return facultate == p.facultate && super.egale(p as t_persoana)
  }

  override func tipareste()
  {
    super.tipareste()
    print(facultate)
  }
}

let s = t_student("ion", 1234567890123, "info")
let p = t_student("gheo", 1230987654321, "info")

if s.egale(p){
  print("egale")
}
else{
  print("diferite")
}