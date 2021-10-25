; We say two trees are almost-equal if they have the same structure but possibly different data
; Write a procedure almost-equal? that takes TWO Trees and check if they are almost equal

(define (almost-equal t1 t2)
  (cond ((or (and (null? (datum t1)) (not (null? (datum t2))))  (and (not (null? (datum t1))) (null? (datum t2)))) 0)
      ((and (leaf? t1) (leaf? t2) 1))
      (almost-equal (car (children t1)) (car (children t2))))
)