(set-logic QF_LRA)
(declare-const a1 Real)
(declare-const a2 Real)
(declare-const b1 Real)
(declare-const b2 Real)
(declare-const c1 Real)
(declare-const c2 Real)
(declare-const d1 Real)
(declare-const d2 Real)

(assert (not(or (< a2 b1) (< b2 a1)  ) ) )
(assert (not(or (< b2 c1) (< c2 b1)  ) ) )
(assert (not(or (< c2 d1) (< d2 c1)  ) ) )
(assert (not(or (< d2 a1) (< a2 d1)  ) ) )

(assert (or (< a2 c1) (< c2 a1)   ) )
(assert (or (< b2 d1) (< d2 b1)   ) )

(assert (< a1 a2))
(assert (< b1 b2))
(assert (< c1 c2))
(assert (< d1 d2))




;(assert (exists ((a1 Real)) (exists ((a2 Real))( exists ((b1 Real)) (exists ((b2 Real)) (exists ((b3 Real)))        )          )                 )))

(check-sat)
(get-model)

