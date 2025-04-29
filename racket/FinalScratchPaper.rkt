#lang sicp
(define name "xiangwei")
name
(define (triple n) (* 3 n))
(define my-number 7)
(triple my-number)
+
(* 1 2 3)

(define (square x) (* x x))

(define (sum f a b)
  (if (> a b)
      0
      (+ (f a) (sum f (+ a 1) b))))

(sum square 1 3) ; 1^2 + 2^2 + 3^2 = 14

((lambda (x) (* x x)) 5)

(define (apply-twice f x)
  (f (f x)))


(apply-twice (lambda (x) (* x x)) 5)

((lambda (x y) (* x y)) 6 7)
