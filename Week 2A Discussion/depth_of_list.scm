;Define a procedure (depth ls) that calculates the maximum depth of sublists in ls. 
;For example,
;(depth ‘(1 2 3 4)) => 1
;(depth ‘(1 2 (3 4) 5)) => 2
;(depth ‘(1 2 (3 4 5 (6 7) 8) 9 (10 11) 12)) => 3

(define (depth ls)
   (cond ((atom? ls) 0)
      ((max (1+ (depth (car ls))) (depth (cdr ls))))
      ))