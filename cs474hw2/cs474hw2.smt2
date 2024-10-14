(declare-const q Bool)
(declare-const r Bool)
(declare-const p Bool)

(assert(and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) )  (or q (not r))))

(check-sat)
(get-model)