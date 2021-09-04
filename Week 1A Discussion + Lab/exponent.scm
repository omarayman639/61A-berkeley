;Write a procedure (expt base power) which implements the exponents function. For
;example, (expt 3 2) returns 9, and (expt 2 3) returns 8.

(define (expt base power)
    (if (= power 0) 1 (* base (expt base (­ power 1)))))