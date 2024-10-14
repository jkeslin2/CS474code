(declare-const q Bool)
(declare-const r Bool)
(declare-const p Bool)

; our derived formula is (and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) ) (or p r (not r) )  (or p q (not r)) (or q (not p)) (or r (not q))  (or r q (not q)) (or q (not q))    (or r (not r))    (or q r (not r))   (or q p (not p))   (or r p (not p))   (or r p (not q))    (or q r (not p))      (or p r q (not q))     ))
; the original formula is and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) )  (or q (not r))
;These two have been substitude into the original equation



(assert(or (and (not (and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) ) (or p r (not r) )  (or p q (not r)) (or q (not p)) (or r (not q))  (or r q (not q)) (or q (not q))    (or r (not r))    (or q r (not r))   (or q p (not p))   (or r p (not p))   (or r p (not q))    (or q r (not p))      (or p r q (not q))     )) (and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) )  (or q (not r)))) (and (and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) ) (or p r (not r) )  (or p q (not r)) (or q (not p)) (or r (not q))  (or r q (not q)) (or q (not q))    (or r (not r))    (or q r (not r))   (or q p (not p))   (or r p (not p))   (or r p (not q))    (or q r (not p))      (or p r q (not q))     ) (not (and (or q (not r)) (or (not p) r)  (or (not q) r p) (or p q (not q) )  (or q (not r)))))))

(check-sat)
(get-model)