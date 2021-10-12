#lang racket
(define (keep-short-rec n ls)
  (if (null? ls)
      ls
      (if (< (string-length (first ls)) n)
          (append (list (first ls)) (keep-short-rec n (rest ls)))
          (keep-short-rec n (rest ls))
      )
  )
)