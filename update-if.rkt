#lang racket
(define (update-if f g xs)
  (if (f (first xs))
      (print "even")
      (print "odd")
  )
)