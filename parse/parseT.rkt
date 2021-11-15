#lang racket
(provide parseT)
(require "match.rkt")
(require "parseS.rkt")
; predictive parsing for the context-free grammar
;     S' → S$
;     S → abS | baT
;     T → baT | λ

; parseT: list of string -> listof string or false
; toks: remaining tokens to be consumed
; evaluates to: remaining tokens after parsing, or false if an error occurs
(define (parseT toks)
  (cond
    [(not (list? toks)) false]                                        ; if toks is not a list
    [(empty? toks) toks]                                              ; T → λ
    [(equal? (first toks) "b") (parseT (match (match toks "b") "a"))] ; T → baT
    [else false]
  )
)