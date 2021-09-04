;Write num-satisfies that takes in a sentence and a predicate, and returns the number of elements
;in the sentence that satisfy the given predicate. USE ONLY HIGHER ORDER FUNCTIONS; DO NOT USE
;RECURSION.

(define (num-satisfies sent pred?)
  (count (filter pred? sent)) 
   )