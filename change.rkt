#lang sicp
(define (change-count total) (cc total 5))

(define (cc total coin-cardinality)
  (cond ((= total 0) 1)
        ((or (< total 0)
             (= coin-cardinality 0)) 0)
        (else (+ (cc total (- coin-cardinality 1))
                 (cc (- total (denom-of coin-cardinality)) coin-cardinality)))))

(define (denom-of c-type)
  (cond ((= c-type 5) 50)
        ((= c-type 4) 25)
        ((= c-type 3) 10)
        ((= c-type 2) 5)
        ((= c-type 1) 1)))