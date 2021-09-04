;Define a procedure (insert-after item mark ls) which inserts item after mark in ls.

(define (insert-after item mark ls)
   (cond ((null? ls) '())
      ((equal? mark (car ls)) (cons mark (cons item (cdr ls))))
      (else (cons (car ls) (insert-after item mark (cdr ls))) )
      ))