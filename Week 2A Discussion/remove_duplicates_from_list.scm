;Define a procedure (unique-elements ls) that takes in a list and returns a new list without duplicates.
;Try doing it without using member?. You might want to use remove above.

(define (unique-elements ls)
   (cond ((null? ls) nil)
      (else (cons (car ls) (unique-elements (remove (car ls) ls))))
   )
)


(define (remove item ls)
   (cond ((null? ls) nil)
    ((equal? (car ls) item) (remove item (cdr ls)))
      (else (append (list (car ls)) (remove item (cdr ls)))))
)