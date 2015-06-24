; checks the sorts of bit-vector functions
(set-logic QF_BV)
(declare-fun t () (_ BitVec 3))
(declare-fun x () (_ BitVec 3))
(declare-fun y () (_ BitVec 5))
(declare-fun z () (_ BitVec 8))
(assert (= (bvnot x) #b111))
(assert (= (bvneg x) #b111))
(assert (= (bvand x t) #b111))
(assert (= (bvor x x) #b111))
(assert (= (bvadd x x) #b111))
(assert (= (bvmul x x) #b111))
(assert (= (bvshl x x) #b111))
(assert (= (bvlshr x x) #b111))
(assert (= (bvudiv x x) #b111))
(assert (= (bvurem x x) #b111))
(assert (bvult x t))
(assert (= (concat x y) z))
(assert (= ((_ extract 4 2) z) x))
(assert (= #xF #b1111))
(assert (distinct #x0 #b0000))

(assert (= (_ bv17 5) #b10001 ))
(assert (= (bvnand x x) (bvneg x)))
(assert (= (bvnor x x) (bvneg x)))
(assert (= (bvsub x x) (_ bv0 3)))
(assert (= (bvxor x x) (_ bv0 3)))
(assert (= (bvxnor x x) #b111))
(assert (= (bvcomp x x) #b1))
(assert (= (bvsdiv x x) x))
(assert (= (bvsrem x x) x))
(assert (= (bvsdiv x x) x))
(assert (= (bvsmod x x) x))
(assert (bvule x x))
(assert (bvuge x x))
(assert (not (bvugt x x)))
(assert (bvsle x x))
(assert (bvsge x x))
(assert (not (bvslt x x)))
(assert (not (bvsgt x x)))
(assert (= (bvashr x x) x))
(assert (= ((_ repeat 2) #b10) #b1010))
(assert (= ((_ zero_extend 2) #b11) #b0011))
(assert (= ((_ sign_extend 2) #b10) #b1110))
(assert (= ((_ rotate_left 1) #b0010) #b0100))
(assert (= ((_ rotate_right 1) #b0011) #b1001))

