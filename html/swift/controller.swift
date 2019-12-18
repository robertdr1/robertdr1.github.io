class t_ec2_controller{
  var view: t_ec2_view?
  var model: t_ec2_model?

  init()
  {
    view = nil
    model = nil
  }

  init(_ view: t_ec2_view, _ model: t_ec2_model)
  {
    self.view = view
    self.model = model
  }

  deinit
  {
    view = nil
    model = nil
  }

  func rezolva()
  {
    var a, b, c: Float
    var x1_re, x1_im, x2_re, x2_im: Float
    a = 1; b = 2; c = 1;
    x1_re = 0; x1_im = 0; x2_re = 0; x2_im = 0

    if let _view = view{
      _view.get_coef(&a, &b, &c)
    }
    if let _model = model{
    _model.set_coef(a, b, c)
    _model.calculeaza()
    _model.get_Solutii(&x1_re, &x1_im, &x2_re, &x2_im)
    }
    else{
      print("nu exista modelul")
    }
    if let _view = view{
    _view.tipareste(x1_re, x1_im, x2_re, x2_im)
    }
    else{
      print("nu exista view-ul")
    }
  }
}