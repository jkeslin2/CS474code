(set-logic LRA)


(assert(forall ((x Real)) (exists ((y Real)) (and (<   (+ x x x) (+ y y)       )  (<  (+ y y y y) (+ x x x x x x x x 1 1 1 1 1 1 1 1 1 1) )    )    )      )) 


(check-sat)
(get-model)
