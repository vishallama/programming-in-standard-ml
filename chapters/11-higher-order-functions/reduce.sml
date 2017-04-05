fun reduce(unit, opn, nil) =
  unit
  | reduce(unit, opn, h :: t) =
    opn (h, reduce(unit, opn, t))

