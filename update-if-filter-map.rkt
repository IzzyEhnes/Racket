#lang racket
(define (update-if f g xs)
  (filter-map (lambda (x) (and (f x) (g x))) xs)
)