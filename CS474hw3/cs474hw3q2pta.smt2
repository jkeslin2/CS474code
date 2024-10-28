(set-logic LRA)
(declare-const l1 Real)
(declare-const l2 Real)
(declare-const u1 Real)
(declare-const u2 Real)


(assert (not (exists ((z Real)) ( and (and (< l1 z)  (< z u1) (< z u2) (< l2 z) ) (not (exists ((w Real)) (and (< l1 w)  (< w u1) (< w u2) (< l2 w) (or (< w z) (< z w) ) )   ))  ))))

(apply qe)

