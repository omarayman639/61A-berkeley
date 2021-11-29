; Write a procedure (insert-at! v i val); after a call, vector v should have val inserted into location i.
; All elements starting from location i should be shifted down.  The last element of v is discarded.
; STk> a => #(i'm like you #[unbound] #[unbound])
; STk> (insert-at! a 1 ‘bohemian) => okay
; STk> a => #(i'm bohemian like you #[unbound])

(define (insert-at! v i val)
	(if (< i (vector-length v))
		(let ((temp (vector-ref v i)))
			(vector-set! v i val)
			(insert-at! v (+ i 1) temp)
		)
	)
)

(define x (vector 1 2 3 4 5))
(insert-at! x 2 7)

(define y (vector 'im 'like 'you 'test 'test))