;Define a procedure (count-of item ls) that returns how many times a given item occurs in a given list;
;it could also be in a sublist. So,
;(count-of 'a '(a b c a a (b d a c (a e) a) b (a))) => 7


(define (count-of item ls)
    (cond ((null? ls) 0)
       ((atom? (car ls)) (if (equal? item (car ls))
         (1+ (count-of item (cdr ls)))
          (count-of item (cdr ls))))
       (else (+ (count-of item (car ls)) (count-of item (cdr ls))))
    )  
)