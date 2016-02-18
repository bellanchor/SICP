; a better sqrt
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

(define (sqrt-iter guess_last guess_now x)
  (if (good-enough? guess_last guess_now )
    guess_now
    (sqrt-iter guess_now (improve guess_now x) x)
  )
)

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define guess_last 1.)
  (define guess_now (improve guess_last x))
  (sqrt-iter guess_last guess_now x)
)

(sqrt 4)
(sqrt 2)
(sqrt 0.00003)
