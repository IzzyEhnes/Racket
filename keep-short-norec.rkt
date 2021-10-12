#lang racket
(define (keep-short-norec n ls)
  (filter (lambda (x) (< (string-length x) n)) ls)
)