#lang sicp
(define (sin x)
  (if (< x 0.1) x
      (refine (step x))))

(define (step x)
  (sin (/ x 3)))

(define (refine x)
  (- (* 3 x)
     (* 4 (cube x))
  ))

(define (cube x) (* x x x))