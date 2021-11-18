; Here’s yet another way to model a cons pair:
; (define-class (cons-pair-list the-car the-cdr) ...)
; (define-class (the-null-list) ...)
; We can make up lists using the cons-pair-list object. So to make the list ‘(2 3), we can do:
; (define l (instantiate cons-pair-list 2
;  (instantiate cons-pair-list 3 (instantiate the-null-list))))

; 1.Implement a (make-oop-list ls) procedure that takes in a normal list and returns a conspair-list constructed with instances
; of the above cons-pair-list and the-null-list classes.
; Assume ls is a flat list.

; 2.Implement the listify method for a cons-pair-list so that (ask l 'listify) returns the list (2 3).

; 3.Implement the length method for a cons-pair-list so that (ask l 'length) returns 2.

; 4.Implement the (accumulate combiner init) method for a cons-pair-list; for example, (ask l 'accumulate + 0) returns 5.

; 5.Implement the (map proc) method for a cons-pair-list so that (ask l ‘map square) returns a
; cons-pair-list containing 4 and 9, leaving l unchanged.

; 6.Implement the (map! proc) method for a cons-pair-list so that (ask l ‘map! square)
; changes l itself to an object containing 4 and 9 (instead of returning a new cons-pair-list
; containing 4 and 9). More specifically, you cannot have any calls to instantiate. The return
; value is unimportant.

(define-class (cons-pair-list the-car the-cdr) 
	(method (listify) (cons the-car (ask the-cdr 'listify )))
	(method (length) (1+ (ask the-cdr 'length )))
	(method (accumulate combiner init) (combiner (ask self 'the-car ) (ask the-cdr 'accumulate combiner init)))
 	(method (map op) (instantiate cons-pair-list (op the-car) (ask the-cdr 'map op)))
	(method (map! op) (set! the-car (op the-car)) (ask the-cdr 'map! op))
)

(define-class (the-null-list) 
	(method (listify) '())
	(method (length) 0)
	(method (accumulate combiner init) init)
	(method (map op) (instantiate the-null-list))
	(method (map! op) '())
)

(define (make-oop-list ls)
	(cond ((empty? ls) (instantiate the-null-list))
		((instantiate cons-pair-list (car ls) (make-oop-list (cdr ls)))))
)

(define x '(2 3 4 5))
(define y (make-oop-list x))
(define (sq x)
	(* x x))