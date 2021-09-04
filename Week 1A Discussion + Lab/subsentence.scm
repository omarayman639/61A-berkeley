;Define a procedure subsent that takes in a sentence and a parameter i, and returns a
;sentence with elements starting from position i to the end. The first element has i = 0.

(define (subsent sent num)
    (cond ((empty? sent) '())
          ((= num 0) sent)
          (else (subsent (bf sent) (­ num 1)))))