#lang sicp
(define (gcd a b)
  (cond ((> b a) (gcd b a))
        ((= 0 (remainder a b)) b)
        (else (gcd b (remainder a b)))))