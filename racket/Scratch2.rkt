#lang sicp

(define (make-account balance)
  (lambda (m)
    (cond ((eq? m 'withdraw)
           (lambda (amount)
             (set! balance (- balance amount))
             balance))
          ((eq? m 'deposit)
           (lambda (amount)
             (set! balance (+ balance amount))
             balance))
          (else (error "unknown request")))))

(define acc (make-account 100))

((acc 'withdraw) 40) ; → 60  
((acc 'deposit) 20)  ; → 80  

(cons-stream 1 (cons-stream 2 (cons-stream 3 '())))
(define-syntax cons-stream
  (syntax-rules ()
    ((cons-stream a b)
     (cons a (delay b)))))
(define ones (cons-stream 1 ones))
ones

(define (stream-car s) (car s))
(define (stream-cdr s) (force (cdr s)))

(stream-car ones) ; 1
(stream-car (stream-cdr ones)) ; 1

(define (nats-from n)
  (cons-stream n (nats-from (+ n 1))))

(define nats (nats-from 1))

nats
