; Write a procedure vector-filter, but changes it in-place. In other words, without returning a new vector.
; Since you will have less items than when you started, replace the rest of the list with #f.

(define (vector-filter! pred? vec)

	(define (loop n)
		(if (= n 0)
			vec
			(if (pred? (vector-ref vec (- n 1)))
				(loop (- n 1))
				(begin (vector-set! vec (- n 1) #f)
				(loop (- n 1))	)
			)
		)
	)
	(loop (vector-length vec))
)

(vector-filter! number? vec)

(define vec (vector 1 2 3 'a 5 'b))