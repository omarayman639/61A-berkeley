; Write (remove-leaves bst) that takes in a bst and returns the bst with all the leaves
; removed.

(define (remove-leaves bst)
    (cond ((null? bst) nil)
       ((leaf? bst) nil)
       (else (make-tree (datum bst) (remove-leaves (left-branch bst)) (remove-leaves (right-branch bst)))))  
)