#lang racket
(define (great-divide x y)
    (cond
        [(equal? y 1) 1]
        [(equal? (modulo x y) 0) y]
        [(great-divide x (- y 1))]
    )
)