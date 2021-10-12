#lang racket
(define (combine f g)
  (lambda (x) (g (f x)))
)