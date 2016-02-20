(define (factorial n)
  (fact-iter 1 1 n)
)

(define (fact-iter product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* product counter) (+ counter 1) max-count)
  )
)

(factorial 0)
(factorial 1)
(factorial 2)
(factorial 4)
