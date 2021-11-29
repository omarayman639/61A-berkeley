; 3.We’d like to rid ourselves of odd numbers in our list: (define my-lst ‘(1 2 3 4 5)) a.Implement (no-odd! ls) that takes in a
; list of numbers and returns the list without the odds, using mutation:
; (no-odd! my-lst) => ‘(2 4)

(define (no-odd! my-lst)
	(cond ((null? my-lst) '())
		((odd? (car my-lst)) (no-odd! (cdr my-lst)))
		(else (set-cdr! my-lst (no-odd! (cdr my-lst))) my-lst)
	)
)
