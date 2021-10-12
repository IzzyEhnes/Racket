#lang racket
(define (sum-diff-helper accum l1 l2)
  (if (null? l1)
      accum
      (sum-diff-helper (+ accum (abs (- (first l1) (first l2)))) (rest l1) (rest l2))
  )
)

(define (sum-diff l1 l2)
  (sum-diff-helper 0 l1 l2)
)