#lang racket
(define (more xs ys)
  (define len_xs (length xs))
  (define len_ys (length ys))
  (if (> len_xs len_ys) #t #f)
)