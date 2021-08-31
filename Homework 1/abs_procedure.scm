;Write the abs procedure, which implements the absolute value function. Use a cond
;statement.

(define (abs x)
    (cond ((= x 0) 0)
          ((< x 0) (­ x))
          (else x)))