;Write all-satisfies that takes in a sentence and a predicate, and returns #t if and only if all of
;the elements in the list satisfy the given predicate. USE ONLY HIGHER ORDER FUNCTIONS; DO NOT USE
;RECURSION.

(define (all-satisfies sent pred?)
   (equal? (count sent) (count (filter pred? sent))))