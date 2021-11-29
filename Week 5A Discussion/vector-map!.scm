; Write a procedure that is the same as the above, but changes it in-place. In other words, without returning
; a new vector.

(define (vector-map! fn vec)
	(define (loop n)
		(if (= n 0)
			vec
			(let ((newel (fn (vector-ref vec (- n 1)))))
				(vector-set! vec (- n 1) newel)
				(loop (- n 1))
			)
		)
	)
	(loop (vector-length vec))
)

(define (sq x) (* x x))
(define vec (vector 2 4 6 8))