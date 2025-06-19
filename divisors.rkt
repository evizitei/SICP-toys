#lang sicp
(define (smallest-divisor n)
  (find-smallest-divisor n 2))

(define (find-smallest-divisor target test_val)
  (cond ((= target test_val) target)
        ((= 0 (remainder target test_val)) test_val)
        (else (find-smallest-divisor target (+ test_val 1)))))