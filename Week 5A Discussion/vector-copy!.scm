; Write a procedure (vector-copy! src src-start dst dst-start length).
; After the call, length elements in vector src starting from index src-start should be copied into vector dst starting from index dst-start.
; STk> a => #(1 2 3 4 5 6 7 8 9 10)
; STk> b => #(a b c d e f g h i j k)
; STk> (vector-copy! a 5 b 2 3) => okay
; STk> a => #(1 2 3 4 5 6 7 8 9 10)
; STk> b => #(a b 6 7 8 f g h i j k)

(define (vector-copy! src src-start dst dst-start length)
	 (if (> length  0)
		(begin (vector-set! dst dst-start (vector-ref src src-start))
		(vector-copy! src (+ src-start 1) dst (+ dst-start 1) (- length 1))
		)
	)
)
(vector-copy! a 5 b 2 3)

(define a (vector 1 2 3 4 5 6 7 8 9 10))
(define b (vector 'a 'b 'c 'd 'e 'f 'g 'h 'i 'j 'k ))