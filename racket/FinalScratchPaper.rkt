#lang sicp
(define x (amb 1 2 3))
(define y (amb 4 5 6))
(require (= (+ x y) 7))
(list x y) ; returns values that satisfy constraint
