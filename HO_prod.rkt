#lang sicp
(define (product a b f next)
  (if (> a b) 1 (* (f a) (product (next a) b f next))))

(define (succ n) (+ n 1))
(define (id n) n)

(define (factorial n)
  (product 1 n id succ))

(define (next-pi-term-value v)
  (if (> (denominator v) (numerator v))
     (/ (+ 2 (numerator v)) (denominator v))
     (/ (numerator v) (+ 2 (denominator v)))))

(define (next-pi-term index value target)
  (if (= index target)
      value
      (next-pi-term (+ index 1) (next-pi-term-value value) target)))

(define (pi-term i)
    (next-pi-term 1 2/3 i)) 

(define (approx-pi n)  
  (* (product 1 n pi-term succ) 4))


(product 3 6 id succ)

(factorial 5)

(exact->inexact (approx-pi 1000))


