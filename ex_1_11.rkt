#lang sicp
(define (f n)
  (if (< n 3) n
      (+ (f (- n 1))
         (+ (* (f (- n 2)) 2)
            (* (f (- n 3)) 3)))

   )
 )

(define (iter-f n) (f-aux 0 1 2 n))

(define (f-aux a b c count)
  (cond ((< count 2) count)
        ((< count 3) c)
        (else (f-aux b c (+ (* 3 a) (+ (* 2 b) c)) (- count 1)))))