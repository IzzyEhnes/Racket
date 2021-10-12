#lang racket
(define (combine f g)
  (lambda (x) (f x))
)
