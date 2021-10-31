; Write (sum-of bst) that takes in a binary search tree, and returns the sum of all the data in
; the tree.

(define (sum-of bst)
   (cond ((null? bst) 0)
      (else (+ (datum bst) (sum-of (left-branch bst)) (sum-of (right-branch bst)))))
)