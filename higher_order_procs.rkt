#lang sicp
(define (sum-thing a b proc next)
  (if (> a b) 0 (+ (proc a) (sum-thing (next a) b proc))))

(define (sum-integers a b)
  (sum-thing a b (lambda (x) x) inc)
)

(define (sum-cubes a b)
  (sum-thing a b cube inc))

(define (pi-sum a b)
  (sum-thing a b (lambda (x) (/ 1.0 (* x (+ x 2))))
                 (lambda (x) (+ x 4))))


(define (inc n) (+ n 1))
(define (cube n) (* n n n))

(sum-integers 5 9)
(sum-cubes 5 9)
(pi-sum 5 9)

(sum-thing 5 9 cube)
(sum-thing 5 9 (lambda (x) x))
