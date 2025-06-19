#lang sicp

(define (is-prime n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-smallest-divisor n 2))

(define (find-smallest-divisor target test_val)
  (cond ((> (* test_val test_val) target) target)
        ((= target test_val) target)
        ((= 0 (remainder target test_val)) test_val)
        (else (find-smallest-divisor target (+ test_val 1)))))

(is-prime 4)
(is-prime 5)