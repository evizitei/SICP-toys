#lang sicp

(define (pascal n)
  (cond ((< n 1) 0)
        ((= n 1) 1)
        (else (+ (p-left-parent n) (p-right-parent n)))
   )
)

(define (p-left-parent n)
  (if (= (pascal-level (lpn n)) (- (pascal-level n) 1))
      (pascal (lpn n))
      0))

(define (p-right-parent n)
  (if (= (pascal-level (rpn n)) (- (pascal-level n) 1))
      (pascal (rpn n))
      0))

(define (lpn n) (- n (pascal-level n)))
(define (rpn n) (+ (lpn n) 1))

(define (pascal-level n)
  (test-p-level 1 n))

(define (test-p-level l n)
  (if (<= n (/ (+ (* l l) l) 2))
      l
      (test-p-level (+ l 1) n)
   )
 )
