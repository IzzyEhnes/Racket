#lang racket
(require "match.rkt")
(provide parseS)
; predictive parsing for the context-free grammar
;    S' → S$
;    S → aSz | bSy | λ

(define (parseS toks)
    (cond
      [(not (list? toks)) false] ; if toks is not a list
      [(empty? toks) toks]                                              ; S → λ
      [(equal? (first toks) "a") (match (parseS (match toks "a")) "z")] ; S → aSz
      [(equal? (first toks) "b") (match (parseS (match toks "b")) "y")] ; S → bSy
      [(equal? (first toks) "z") toks]                                  ; S → λ
      [(equal? (first toks) "y") toks]                                  ; S → λ
      [else false]
    )
)

; First(S') = {a,b,$}. On any of these three, (parseS toks) and verify result is end-of-input.
(define (parseSprime toks)
  (cond ((not (list? toks)) toks)
        ((empty? toks) (equal? (parseS toks) empty))             ; $ predicts S' -> S$
        ((equal? (first toks) "a") (equal? (parseS toks) empty))  ; a predicts S' -> S$
        ((equal? (first toks) "b") (equal? (parseS toks) empty))  ; b predicts S' -> S$
        (else false)))
