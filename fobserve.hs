import Debug.Observe

remUltimo [_] = []
remUltimo (a:b) = observe "a" a : observe "rem_ultimo" remUltimo b
