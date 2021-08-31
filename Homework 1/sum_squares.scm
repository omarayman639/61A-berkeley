; Define a procedure that takes three numbers as arguments and returns the sum of
;the squares of the two larger numbers.


(define (sumSquare x y z)
(- (+ (square x) (square y) (square z)) (square (min x y z)))
)   
(define (square x)
   (* x x ))

(define (min x y z)
   (if (< x y)
     (if (< x z) x z) 
      (if (< y z) y z ))   
)