#lang sicp
(define (sqrt x)
  
  (define (good-enough guess prev-guess)
    (if (< (abs (- prev-guess guess)) 0.000001) true false))

  (define (improve-guess guess x)
    (average guess (/ x guess)))

  (define (average a b) (/ (+ a b) 2))

  (define (square x) (* x x))
  
  (define (sqrt-iter guess x prev-guess)
    (if (good-enough guess prev-guess)
      guess
      (sqrt-iter (improve-guess guess x) x guess)))

   (sqrt-iter 1.0 x 10.0))




