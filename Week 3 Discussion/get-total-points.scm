; Each TA represents grades differently. Ahmed is lazy, so his grade item is just the total number of
; points for the student. Justin is more careful, so his grade item is an association list of pairs; each
; pair represents a grade entry for an assignment, so the car is the name of the assignment, and the
; cdr the number of points the student got. Make calls to put and get to prepare the table, and write
; a generic get-total-points procedure that take in a tagged student record and return the total
; number of points the student has.

(put 'ahmed 'total cdr)
(put 'justin 'total (lambda (x) (calc-total (cdr x))))

(define ahmed
	(make-tagged-record 'ahmed (cons '(omar ayman) 20)))

(define justin
	(make-tagged-record 'justin (cons '(omar ayman) (list (cons 'math 20) (cons 'chem 30)))))

(define (get-total-points record)
	((get (type-tag record) 'total )  (content record))
)

(define (calc-total lst)
	(cond ((null? lst) 0)
		((+ (content (car lst)) (calc-total (cdr lst)))))
)
