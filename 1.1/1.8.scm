;cube root
(define (good-enough? guess_last guess_now)
  (define eps 1e-8)
  (< (abs (- 1 (/ guess_last guess_now))) eps)
)

(define (abs x)
  (if (< x 0)
    (- x)
    x
  )
)

(define (cbrt-iter guess_last guess_now x)
  (if (good-enough? guess_last guess_now )
    guess_now
    (cbrt-iter guess_now (improve guess_now x) x)
  )
)

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3)
)

(define (cbrt x)
  (define guess_last 1.)
  (define guess_now (improve guess_last x))
  (cbrt-iter guess_last guess_now x)
)

(cbrt 9)
(cbrt 8)
