; iterative one
(define (f n)
  (f-iter 0 1 2 n)
)

(define (f-iter a b c n)
  (if (= n 0)
    a
    (f-iter b c (+ (* 3 a) (* 2 b) c) (- n 1))
  )
)

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)

