; Write (height-of tree) that takes in a tree and returns the height – the length of the longest
; path from the root to a leaf.

(define (height-of tree)
   (cond ((null? tree) 0)
      (else (1+ (max (height-of (left-branch tree)) (height-of (right-branch tree))))))
)