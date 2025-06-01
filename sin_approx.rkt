#lang sicp
(define (sin x)
  (if (< x 0.1) x
      (- (* 3 (sin (/ x 3)))
         (* 4 (expt (sin (/ x 3)) 3)))))