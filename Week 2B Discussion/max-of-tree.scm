; Write (max-of-tree tree) that does the obvious thing. The tree has at least one element.

(define (max-tree tree)
   (max (datum tree) (max-forest (children tree)))
)

(define (max-forest forest)
   (if (null? forest)
     0 
      (max (max-tree (car forest)) (max-forest (cdr forest))))
)