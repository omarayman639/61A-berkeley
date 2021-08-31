;write first-satisfies that takes in a predicate procedure and a sentence,
;and returns the first element that satisfies the predicate test.
;Return #f if none satisfies the predicate test.

(define (first-satisfies pred? sent)
 (cond ((empty? sent) #f)
 ((pred? (first sent)) (first sent))
 (else (first-satisfies pred? (bf sent)))))
