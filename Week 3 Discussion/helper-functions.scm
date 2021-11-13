
(define (operate op record)
	((get (type-tag record) op) (content record)))

(define (get-grade record)
	(operate 'get-grade record)
)

(define (get-name record)
	(operate 'get-name record))

(define (make-tagged-record ta-name record)
	(attach-tag ta-name record)
)

(define type-tag car)
(define attach-tag cons)
(define content cdr)