#lang sicp
(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even b) (fast-mult (double a) (halve b)))
        ((= 1 1) (+ a (fast-mult a (- b 1))))))

(define (even b)
  (= 0 (remainder b 2)))

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (i-mult a b)
  (internal-mult a b 0))

(define (internal-mult a b c)
  (cond ((= b 0) c)
        ((= b 1) (+ c a))
        ((even b) (internal-mult (double a) (halve b) c))
        ((= 1 1) (internal-mult a (- b 1) (+ c a)))))