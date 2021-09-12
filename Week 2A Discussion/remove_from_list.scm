;Define a procedure (remove item ls) that takes in a list
;and returns a new list with item removed from ls.

(define (remove item ls)
   (cond ((null? ls) nil)
    ((equal? (car ls) item) (cdr ls))
      (else (append (list(car ls)) (remove item (cdr ls)))))
)