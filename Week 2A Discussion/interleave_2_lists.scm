; Define a procedure (interleave ls1 ls2)
; that takes in two lists and returns one list with elements
; from both lists interleaved. So,
; (interleave '(a b c d) '(1 2 3 4 5 6 7)) => (a 1 b 2 c 3 d 4 5 6 7)

(define (interleave ls1 ls2)
   (cond ((null? ls1) ls2)
      ((null? ls2) ls1)
      (else (cons (car ls1) (interleave ls2 (cdr ls1))))
   )
)