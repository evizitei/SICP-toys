#lang sicp
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (square x) (* x x))

(define (sos x y) (+ (square x) (square y)))

(define (soms x y z)
  (cond ((and (< x y) (< x z)) (sos y z))
        ((and (< y x) (< y z)) (sos x z))
        ((and (< z y) (< z x)) (sos x y))
        (else 0)))