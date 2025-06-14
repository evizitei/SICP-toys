#lang sicp
(define (pow base n)
  (if (= n 0)
      1
      (* base
         (pow base (- n 1)))))

(define (ipow base n)
  (iter-pow 1 base n))

(define (iter-pow value base counter)
  (if (= counter 0)
      value
      (iter-pow (* value base) base (- counter 1))))

(define (smart-pow b n)
  (cond ((= n 0) 1)
        ((even n) (square (smart-pow b (/ n 2))))
        (else (* b (smart-pow b (- n 1))))
  )
)

(define (square x) (* x x))

(define (even n) (= 0 (remainder n 2)))

(define (smarter-pow b n)
  (smarti-pow 1 b n)
 )

(define (smarti-pow val base p)
  (cond ((= p 0) val)
        ((even p) (smarti-pow (* val (smarter-pow base (/ p 2))) base (/ p 2)))
        (else (smarti-pow (* val base) base (- p 1)))
  )
 )