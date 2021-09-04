;Write repeat-evens that takes in a sentence of numbers and repeats the even elements twice. USE ONLY
;HIGHER ORDER FUNCTIONS; DO NOT USE RECURSION.

(define (repeat-evens sent)
   (every (lambda (x) (if (even? x)
      (se x x)
      x)) sent))

