; Write a procedure reverse-vector!.  Do I have to explain what it does?

(define (reverse-vector! v)
	(define (loop n)
		(if (< n 3)
			(let ((temp (vector-ref v n)))
				(vector-set! v n (vector-ref v (- (vector-length v) n 1)))
				(vector-set! v  (- (vector-length v) n 1) temp)
				(loop (1+ n))
			)
		)
	)
	(loop 0 )
)

(define v (vector 1 2 3 4 7))
(reverse-vector! v)