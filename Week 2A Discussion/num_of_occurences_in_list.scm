;Define a procedure (count-unique ls) which, given a list of elements, 
;returns a list of pairs whose car
;is an element and whose cdr is its number of occurrences in the list. For example,
;(count-unique '(a b b b c d d a e e f a a))
;=> ((a . 4) (b . 3) (c . 1) (d . 2) (e . 2) (f . 1))
;You might want to use unique-elements and count-of defined above


(define (count-unique ls)
   (cond ((null? ls) nil)
      (else (cons (cons (car (unique-elements ls)) (count-of (car ls) ls))
       (count-unique (remove (car ls) ls))))
   )
)

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

(define (count-of item ls)
    (cond ((null? ls) 0)
       ((atom? (car ls)) (if (equal? item (car ls))
         (1+ (count-of item (cdr ls)))
          (count-of item (cdr ls))))
       (else (+ (count-of item (car ls)) (count-of item (cdr ls))))
    )  
)