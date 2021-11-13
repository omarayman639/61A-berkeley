;  Write a procedure, (make-tagged-record ta-name record), that takes in a TA’s student
; record, and type-tags it so it’s consistent with the type-tag and content accessor procedures
; defined above.

(define (make-tagged-record ta-name record)
	(attach-tag ta-name record)
)

(define type-tag car)
(define attach-tag cons)
(define content cdr)