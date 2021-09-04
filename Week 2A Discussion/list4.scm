;Define a procedure list-4 that takes in 4 elements and outputs a list equivalent to one created by calling
;list, but without using the list procedure.

(define (list-4 a b c d)
   (cons a (cons b (cons c (cons d '())))))