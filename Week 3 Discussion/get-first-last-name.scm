;  Each TA represents names differently. Darren uses a cons pair, whose car is the last name and
; whose cdr is the first. Jerry is so cool that a “name” is just a word of two letters, representing the
; initials of the student (so George Bush would be gb). Make calls to put and get to prepare the
; table, then write generic get-first-name and get-last-name procedures that take in a tagged
; student record and return the first or last name, respectively

(put 'darren 'last-name caar)
(put 'darren 'first-name cdar)
(put 'jerry 'first-name first)
(put 'jerry 'last-name last)

(define (get-first-name record)
	(operate record 'first-name)
)

(define (get-last-name record)
	(operate record 'first-name)
)

(define (operate op record)
	((get (type-tag record) op) (content record)))

(define darren
	(make-tagged-record 'darren (cons (cons 'ayman 'omar) 20)))

(define jerry 
	(make-tagged-record 'jerry (cons 'oa 20)))
