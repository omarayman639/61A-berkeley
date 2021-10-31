; Write (max-of bst) that takes in a binary search tree, and returns the maximum datum in the
; tree. The tree has at least one element

(define (max-of bst)
   (cond ((null? (right-branch bst)) (datum bst))
      (else (max-of (right-branch bst))))
)