#lang sicp
(define (sum-thing a b proc next)
  (if (> a b) 0 (+ (proc a) (sum-thing (next a) b proc next))))

(define (i-sum a b proc next)
  (iter-sum a b proc next 0))

(define (iter-sum a b proc next acc)
  (if (> a b)
      acc
      (iter-sum (next a) b proc next (+ acc (proc a)))))

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

(define (simpsons-rule a b f n)
  (define (simp-h) (/ (- b a) n))
  (define (simp-f k) (f (+ a (* k (simp-h)))))
  (define (simp-term k)
    (cond ((= k 0) (simp-f k))
          ((= k n) (simp-f k))
          ((even? k) (* 2 (simp-f k)))
          (else (* 4 (simp-f k)))))
  (* (/ (simp-h) 3)
     (sum-thing 0 n simp-term inc)))

(sum-integers 5 9)
(sum-cubes 5 9)
(pi-sum 5 9)

(sum-thing 5 9 cube inc)
(sum-thing 5 9 (lambda (x) x) inc)
(i-sum 5 9 cube inc)
(i-sum 5 9 (lambda (x) x) inc)

(cube 0.02)
(integral cube 0 1 0.0001)
(simpsons-rule 0 1 cube 1000)