;Define a procedure reverse that takes a list
;as argument and returns a list of the same elements in reverse order

(define (reverse lst)
   (cond ((null? (cdr lst)) lst)
      (else (append (reverse (cdr lst)) (list (car lst)))))
  )
