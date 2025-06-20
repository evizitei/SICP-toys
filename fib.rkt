#lang sicp
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

(define (ifib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(define (fast-fib n)
   (fast-fib-iter 1 0 0 1 n))

(define (fast-fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
           (fast-fib-iter a b
                          (+ (* p p) (* q q))
                          (+ (* q q) (* 2 (* q p)))
                          (/ count 2)))
        (else (fast-fib-iter (+ (* b q) (* a q) ( * a p))
                             (+ (* b p) (* a q))
                             p
                             q
                             (- count 1)))))