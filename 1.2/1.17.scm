(define (fast-expt b n)
  (fast-expt-iter 1 b n)
)

(define (fast-expt-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter a (square b) (/ n 2)))
        (else (fast-expt-iter (* a b) b (- n 1)))
  )
)

(define (square x) (* x x))

(fast-expt 1 2)
(fast-expt 2 2)
(fast-expt 3 3)
(fast-expt 2 4)
(fast-expt 2 5)
