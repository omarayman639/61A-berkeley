; 5.Write a procedure, remove-first!  which, given a list, removes the first element of the list destructively.
; You may assume that the list contains at least two elements.  So,
; > (define ls ‘(1 2 3 4))
; > (remove-first! ls) => return value unimportant
; > ls => (2 3 4)

(define (remove-first! ls)
		 (begin (set-car! ls (cdr ls)) (set-cdr! ls '()))
)