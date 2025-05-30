#lang sicp
(define (cube-root x) (cube-root-iter x 1.0 10.0))

(define (cube-root-iter x guess prev-guess)
  (if (good-enough guess prev-guess)
      guess
      (cube-root-iter x (improve-guess guess x) guess)))

(define (good-enough g pg)
    (< (abs (- pg g)) 0.0001))

(define (improve-guess guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x) (* x x ))