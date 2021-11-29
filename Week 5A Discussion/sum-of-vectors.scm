; 1. Write a procedure (sum-of-vector v) that adds up the numbers inside the vector.  Assume all data fields are valid numbers.

(define (sum-of-vectors v)
	(define (loop n) 
		(if (= n 0)
			0
			(+ (vector-ref v n) (loop (- n 1)))
		)
	)
	(loop (- (vector-length v) 1))
)
