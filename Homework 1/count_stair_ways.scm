;I want to go up a flight of stairs that has n steps.
;I can either take 1 or 2 steps each
;time. How many ways can I go up this flight of stairs?
;Write a procedure count­stairways that solves this for me.

(define (count­stair­ways n)
    (cond ((= n 1) 1)
          ((= n 2) 2)
          (else (+ (count­stair­ways (­ n 1))
                   (count­stair­ways (­ n 2))))))
