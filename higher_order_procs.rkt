#lang sicp
(define (sum-thing a b proc next)
  (if (> a b) 0 (+ (proc a) (sum-thing (next a) b proc next))))

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

(define (integral f a b dx)
  (* (sum-thing (+ a (/ dx 2.0)) b f (lambda (x) (+ x dx))) dx))

(sum-integers 5 9)
(sum-cubes 5 9)
(pi-sum 5 9)

(sum-thing 5 9 cube inc)
(sum-thing 5 9 (lambda (x) x) inc)

(cube 0.02)
(integral cube 0 1 0.0001)