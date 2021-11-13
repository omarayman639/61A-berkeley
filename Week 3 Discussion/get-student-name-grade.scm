; A student record consists of two things: a “name” item and a “grade” item. Each TA represents a
; student record differently. Min uses a list, whose first element is a name item, and the second
; element the grade item. Justin uses a cons pair, whose car is the name item, and the cdr the grade
; item. Make calls to put and get, and write generic get-name and get-grade procedures that
; take in a tagged student record and return the name or grade items, respectively.

(put 'Min 'get-name car)
(put 'Min 'get-grade cadr)
(put 'Justin 'get-name car)
(put 'Justin 'get-grade cdr)


(define (get-grade record)
	(operate record 'get-grade)
)

(define (get-name record)
	(operate record 'get-name))

(define (operate record op)
	((get (type-tag record) op) (content record)))

(define min
	(make-tagged-record 'Min (list '(omar ayman) 20)))

(define justin
	(make-tagged-record 'justin (cons '(omar ayman) 20)))