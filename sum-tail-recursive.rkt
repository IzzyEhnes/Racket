#lang racket
(define (sum-helper accum xs)
  (if (equal? xs '())
      accum
      (sum-helper (+ accum (first xs)) (rest xs))
  )
)

(define (sum xs)
  (sum-helper 0 xs)
)
