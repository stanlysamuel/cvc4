; COMMAND-LINE: --symmetry-breaker-exp
(set-logic ALL)
(set-info :status unsat)
(declare-fun A () (Set Int))
(declare-fun B () (Set Int))
(declare-fun C () (Set Int))

(declare-fun f () Int)
(declare-fun g () Int)
(declare-fun h () Int)
(declare-fun i () Int)
(declare-fun j () Int)

(assert (subset A (insert g h i (singleton f))))
(assert (= C (setminus A B) ))
(assert (subset B A))
(assert (= C (intersection A B)))
(assert (member j C))
(check-sat)
