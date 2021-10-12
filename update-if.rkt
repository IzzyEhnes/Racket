#lang racket
(define (update-if f g xs)
  (if (equal? xs '())
      xs
      (if (f (first xs))
          (append (list (g (first xs))) (update-if f g (rest xs)))
          (update-if f g (rest xs))
      )
  )
)