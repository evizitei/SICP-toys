#lang sicp
(define (sum-thing a b proc)
  (if (> a b) 0 (+ (proc a) (sum-thing (+ a 1) b proc))))

(define (sum-integers a b)
  (sum-thing a b (lambda (x) x)))

(define (sum-cubes a b)
  (sum-thing a b cube))

(define (pi-sum a b)
  (sum-thing a b (lambda (x) (/ 1.0 (* x (+ x 2))))))



(define (cube n) (* n n n))

(sum-integers 5 9)
(sum-cubes 5 9)
(pi-sum 5 9)

(sum-thing 5 9 cube)
(sum-thing 5 9 (lambda (x) x))
