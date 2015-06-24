; checks that all symbols in LRA are defined and that various
; expressions in the language are permitted
(set-logic LRA)
(declare-fun a () Real)
(declare-fun b () Real)
(assert (= a (+ a b)))
(assert (= a (+ b 1)))
(assert (= a (+ b 1.0)))
(assert (= a (+ 1 b)))
(assert (= a (+ 1.0 b)))

(assert (= a (- a b)))
(assert (= a (- b 1)))
(assert (= a (- b 1.0)))
(assert (= a (- 1 b)))
(assert (= a (- 1.0 b)))

(assert (= a (- b)))
(assert (= a (- 1)))
(assert (= a (- 1.0)))

(assert (>= a b))
(assert (>= a 1))
(assert (>= a 1.0))
(assert (>= 1 a))
(assert (>= 1.0 a))

(assert (<= a b))
(assert (<= a 1))
(assert (<= a 1.0))
(assert (<= 1 a))
(assert (<= 1.0 a))

(assert (> a b))
(assert (> a 1))
(assert (> a 1.0))
(assert (> 1 a))
(assert (> 1.0 a))

(assert (< a b))
(assert (< a 1))
(assert (< a 1.0))
(assert (< 1 a))
(assert (< 1.0 a))

(assert (distinct a b 1 1.0))

(assert (= a (* b (/ 3 20))))
(assert (= a (* (/ 3 20) b)))
(assert (= a (* (/ (- 3) 20) b)))
(assert (= a (* (- 20) b)))
(assert (= a (* 20 b)))
(assert (= a (* 20.0 b)))
(assert (= a (* (- 20.0) b)))
(assert (= (* b (/ 3 20)) a))
(assert (= (* (/ 3 20) b) a))
(assert (= (* (/ (- 3) 20) b) a))
(assert (= (* (- 20) b) a))
(assert (= (* 20 b) a))
(assert (= (* 20.0 b) a))
(assert (= (* (- 20.0) b) a))

(assert (= a (ite true b b)))
(assert (= a (ite true 1.0 1)))

(assert (forall ((a Real)(c Real)) (=> (> a c) (> (+ a 1) c))))
(assert (exists ((c Real)) (= a c )))
