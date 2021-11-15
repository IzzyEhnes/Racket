#lang racket/base
(require racket/bool)
(require racket/list)
(provide match)
; do not change any code above this line. Write your code below it.

; match : list item -> list or false
; if first item of list equals item return rest of list, else false
; Examples:
;   (match '("a" "b" "c") "a")  -> '("b" "c")
;   (match '("a" "b" "c") "b")  -> false
;   (match '("a") "a")          -> '()
;   (match '() "a")             -> false
;   (match false "a")           -> false
(define (match toks tok)
  (cond
    [(not (list? toks)) false]
    [(equal? toks null) false]
    [(equal? (first toks) tok) (rest toks)]
    [(not (equal? (first toks) tok)) false]
  )
)