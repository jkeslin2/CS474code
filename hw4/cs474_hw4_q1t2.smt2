(set-logic QF_UF)

(declare-sort U 0)

; Declare constants of sort U
(declare-const c U)
(declare-const e U)

; Declare functions over the sort U
(declare-fun fi (U) U)
(declare-fun f (U U) U)

(assert (= (f (f c c) c) (f c (f c c))))
(assert (= (f (f c c) e) (f c (f c e))))
(assert (= (f (f c e) c) (f c (f e c))))
(assert (= (f (f c e) e) (f c (f e e))))
(assert (= (f (f e c) c) (f e (f c c))))
(assert (= (f (f e c) e) (f e (f c e))))
(assert (= (f (f e e) c) (f e (f e c))))
(assert (= (f (f e e) e) (f e (f e e))))
;the rest of the axioms
(assert (and ( = (f c e) c )  ( = (f e c) c ) ) )
(assert (and ( = (f e e) e )  ( = (f e e) e ) ) )
(assert (and ( = (f c (fi c) ) e)  ( = (f (fi c) c ) e) ) )
(assert (and ( = (f e (fi e) ) e)  ( = (f (fi e) e ) e) ) )
; the statement
(assert (and (= (f c c) c) (= (f c c) c) (not (= e c))  ))
(assert (and (= (f e c) e) (= (f c e) e) (not (= e c))  ))

(check-sat)
(get-model)