;  Write (listify bst) that converts elements of the given bst into a list.

(define (listify-bst bst)
   (cond ((null? bst) '())
      (else (append (list (datum bst)) (listify-bst (left-branch bst)) (listify-bst (right-branch bst)))))
)